#ifndef BasicMedianFilter_h
#define BasicMedianFilter_h

/*
 Created by Rustam Iskenderov, 2016
 For mechanical thermal imaging camera
*/

/*
 Code was originally taken from RunningMedia and was heavely rewritten

 1. Using templates
 2. Removed useless methods
 3. Using optimal types
 4. Using bubble sort, since it does not need temporary buffer.
*/

template <typename T, uint8_t N> class BasicMedianFilter {

  public:

    BasicMedianFilter()
    {
      _size = N;
      clear();
    };

    void clear()
    {
      _cnt = 0;
      _idx = 0;
    };

    void add(T value)
    {
      _ar[_idx++] = value;
      if (_idx >= _size) _idx = 0; // wrap around
      if (_cnt < _size) ++_cnt;
    };

    bool getMedian(T& value)
    {
      if (_cnt > 0) {
        sort();
        value = _ar[_cnt / 2];
        return true;
      }
      return false;
    };


    bool getAverage(uint8_t nMedians, T &value)
    {
      if ((_cnt > 0) && (nMedians > 0))
      {
        if (_cnt < nMedians) nMedians = _cnt;     // when filling the array for first time
        uint8_t start = (_cnt - nMedians) / 2;
        uint8_t stop = start + nMedians;
        sort();
        T sum = 0;
        for (uint8_t i = start; i < stop; ++i) sum += _ar[i];
        value = sum / nMedians;
        return true;
      }
      return false;
    }


  private:
    uint8_t _size;
    uint8_t _cnt;
    uint8_t _idx;
    T _ar[N];

    void sort()
    {
      for (uint8_t i = 0; i < (_cnt - 1); i++)
      {
        for (uint8_t k = 0; k < (_cnt - (i + 1)); k++)
        {
          if (_ar[k] > _ar[k + 1])
          {
            T t = _ar[k];
            _ar[k] = _ar[k + 1];
            _ar[k + 1] = t;
          }
        }
      }
    }
};

#endif
// --- END OF FILE ---
