/*
 Created by Rustam Iskenderov, 2016
 For mechanical thermal imaging camera
*/


/*
 Simple way to control stepper motor
*/

class BasicStepper
{
  public:

    static const uint8_t RUN = 0x1;
    static const uint8_t LAST_DIR_FORWARD = 0x2;
    static const uint8_t LAST_DIR_BACKWARD = 0x4;

    void init(uint8_t pin0, uint8_t pin1, uint8_t pin2, uint8_t pin3)
    {
      _pin0 = pin0;
      _pin1 = pin1;
      _pin2 = pin2;
      _pin3 = pin3;

      reset();
      resetLastDir();

      _delay = 30000;

      pinMode(_pin0, OUTPUT);
      pinMode(_pin1, OUTPUT);
      pinMode(_pin2, OUTPUT);
      pinMode(_pin3, OUTPUT);

      digitalWrite(_pin0, LOW);
      digitalWrite(_pin1, LOW);
      digitalWrite(_pin2, LOW);
      digitalWrite(_pin3, LOW);
    }

    void setDelay(unsigned long delay)
    {
      _delay = delay;
    }

    void reset()
    {
      _coilIdx = 0;
      _steps = 0;
      setState(RUN, false);
    }

    void resetLastDir()
    {
      setState(LAST_DIR_FORWARD | LAST_DIR_BACKWARD, false);
    }


    void step(bool forward)
    {
      switch (_coilIdx) {
        case 0:
          digitalWrite(_pin0, LOW);
          digitalWrite(_pin1, HIGH);
          digitalWrite(_pin2, HIGH);
          digitalWrite(_pin3, LOW);
          break;
        case 1:
          digitalWrite(_pin0, LOW);
          digitalWrite(_pin1, HIGH);
          digitalWrite(_pin2, LOW);
          digitalWrite(_pin3, HIGH);
          break;
        case 2:
          digitalWrite(_pin0, HIGH);
          digitalWrite(_pin1, LOW);
          digitalWrite(_pin2, LOW);
          digitalWrite(_pin3, HIGH);
          break;
        case 3:
          digitalWrite(_pin0, HIGH);
          digitalWrite(_pin1, LOW);
          digitalWrite(_pin2, HIGH);
          digitalWrite(_pin3, LOW);
          break;
        default:
          park();
          break;
      }

      if (forward)
      {
        _coilIdx++;
      } else
      {
        _coilIdx--;
      }

      if (_coilIdx > 3)
      {
        _coilIdx = 0;
      }

      if (_coilIdx < 0)
      {
        _coilIdx = 3;
      }

      delayMicroseconds(_delay);
    }

    void stepsAsync(int16_t steps)
    {
      setState(RUN);
      _steps = steps;
      
      resetLastDir();
      
      if (steps > 0)
      {
        setState(LAST_DIR_FORWARD);
      } else
      {
        setState(LAST_DIR_BACKWARD);
      }
    }

    void work()
    {
      if (getState(RUN))
      {
        int8_t dir = _steps > 0 ? -1 : 1;

        if (_steps != 0)
        {
          step(_steps > 0 ? true : false);
          _steps += dir;
        } else
        {
          setState(RUN, false);
          park();
        }
      }
    }

    void setState(uint8_t state, bool set = true)
    {
      if (set)
      {
        _states |= state;
      } else
      {
        _states &= ~state;
      }
    }

    bool getState(uint8_t state)
    {
      return (_states & state) != 0;
    }

    void park()
    {
      digitalWrite(_pin0, LOW);
      digitalWrite(_pin1, LOW);
      digitalWrite(_pin2, LOW);
      digitalWrite(_pin3, LOW);
      reset();
    }

  private:
    uint8_t _pin0, _pin1, _pin2, _pin3;
    int8_t _coilIdx;
    int16_t _steps;
    uint8_t _states;
    uint16_t _delay;
};
