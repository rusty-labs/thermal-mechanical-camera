#include <SPI.h>
#include <SD.h>

#define _DEBUG

#include "BasicMedianFilter.h"
#include "BitmapWriter.h"
#include "BasicStepper.h"


unsigned long last_time;
long time;

static const uint8_t SAMPLES_COUNT = 210;
BasicMedianFilter<uint16_t, SAMPLES_COUNT> m_temperature;


BasicStepper hStepper;
BasicStepper vStepper;
BmpWriter bmpWriter;

//const unsigned int H_SIZE = 4 * 110;
//const unsigned int V_SIZE = 4 * 50;

const unsigned int H_SIZE = 4 * 30;
const unsigned int V_SIZE = 4 * 20;

unsigned int v_pos = 0;
unsigned int h_pos = 0;
bool run_cycle = false;
bool finish_cycle = false;

unsigned long scanning_time = 0;


void setup()
{
  Serial.begin(9600);

  /*
  while (!Serial) {
    ; // wait for serial port to connect. Needed for Leonardo only
  }
  */
  if (!SD.begin(10)) {
    Serial.println("SD initialization failed!");
    return;
  }
  Serial.println("SD initialization done.");

  hStepper.init(5, 4, 3, 2);
  vStepper.init(A2, A3, A4, A5);

  hStepper.setDelay(0);
  vStepper.setDelay(0);
}


unsigned long time1;

uint16_t getTemperature()
{
  m_temperature.clear();

  uint32_t measurementTime = 20000 / SAMPLES_COUNT; // usec

  //  delayMicroseconds(18000);

  for (uint8_t i = 0; i < SAMPLES_COUNT; ++i)
  {
    uint32_t time1 = micros();
    m_temperature.add(analogRead(A0));

/*
    uint32_t time_spent = micros() - time1;

    if (time_spent < measurementTime)
    {
      delayMicroseconds(measurementTime - time_spent);
    }
*/
  }

  uint16_t _median;

  m_temperature.getMedian(_median);

    //m_temperature.getAverage(10, _median);
    //Serial.print("Median = ");
    //Serial.print(_median);
    //Serial.println(" ");


  return _median;
}

void startScanning()
{
  scanning_time = millis();

  char fileName[] = "output00.bmp";

  for (int i = 0; i < 100; ++i)
  {
    fileName[6] = i / 10 + '0';
    fileName[7] = i % 10 + '0';

    if (!SD.exists(fileName))
    {
      break;
    }
  }

  if (bmpWriter.create(fileName, H_SIZE, V_SIZE, 8) == false)
  {
    return;
  }

  bmpWriter.fillEmptyData();

  //delay(20000);

  run_cycle = true;
}


void stopScanning()
{
  finish_cycle = true;
}

void loop()
{
  /*
    time1 = micros();
    getTemperature();
    //Serial.println(micros()-time1);

    delay(300);

    return;
  */


  if (Serial.available())
  {
    int cmd = Serial.parseInt();

    switch (cmd)
    {
      case 0:
        stopScanning();
        break;

      case 2:
        vStepper.stepsAsync(4 * 5);
        vStepper.resetLastDir();
        break;

      case 3:
        vStepper.stepsAsync(-4 * 5);
        vStepper.resetLastDir();
        break;

      case 4:
        hStepper.stepsAsync(4 * 5);
        hStepper.resetLastDir();
        break;

      case 5:
        hStepper.stepsAsync(-4 * 5);
        hStepper.resetLastDir();
        break;

      case 9:
        startScanning();
        break;
    }

  }

  if (run_cycle)
  {
    if (hStepper.getState(BasicStepper::RUN) == false)
    {
      bmpWriter.flush();
      // moving to the next horizontal line
      vStepper.step(true);

      Serial.print("vertical pos: ");
      Serial.println(v_pos++);

      if (hStepper.getState(BasicStepper::LAST_DIR_FORWARD))
      {
        //going backward
        hStepper.stepsAsync(-H_SIZE);
        h_pos = H_SIZE - 1;
      } else
      {
        //going forward or stop

        h_pos = 0;

        if (finish_cycle)
        {
          bmpWriter.close();
          run_cycle = false;
          finish_cycle = false;
          vStepper.stepsAsync(-v_pos);
          v_pos = 0;
        } else
        { // new horizontal cycle

          if (v_pos > V_SIZE)
          { //scanning is finished
            bmpWriter.close();
            run_cycle = false;
            vStepper.stepsAsync(-v_pos);
            v_pos = 0;

            Serial.print("finished, scanning time, sec: ");
            Serial.println((millis() - scanning_time) / 1000);

          } else {
            hStepper.stepsAsync(H_SIZE);
          }

        }// end horizontal cycle

      }

    } else
    {
      if (v_pos <= V_SIZE)
      {
        uint32_t clr = (uint32_t(255) * getTemperature()) / 1023;

        // Serial.print("clr: ");
        // Serial.println(clr);

        bmpWriter.writePixel(h_pos, v_pos - 1, clr);

        if (hStepper.getState(BasicStepper::LAST_DIR_FORWARD))
        {
          ++h_pos;
        } else
        {
          --h_pos;
        }
      }


    }
  }

  hStepper.work();
  vStepper.work();
}
