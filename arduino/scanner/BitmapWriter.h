#ifndef BitmapWriter_h
#define BitmapWriter_h

/*
 Created by Rustam Iskenderov, 2016
 For mechanical thermal imaging camera
*/

/*
 Supports 8bits or 24bits bmp images
 The code is supposed to consume as less memory as possible.
*/
class BmpWriter
{
  public:
    bool create(char* filename,  uint16_t width, uint16_t height, uint8_t bpp)
    {
      _width = width;
      _height = height;
      _bpp = bpp;

      uint16_t colorsNumber = (bpp == 8) ? 256 : 0;
      _rowSize = ((bpp * width + 31) / 32) * 4;  // how many bytes in the row (used to create padding)
      uint32_t dataSize = height * uint32_t(_rowSize);
      _dataOffset = (bpp == 8) ? (14 + 40 + colorsNumber * 4) : (14 + 40); // 14 + 40, Offset where the pixel array (bitmap data) can be found
      uint32_t fileSize = _dataOffset + dataSize;
      _paddingSize = _rowSize - (bpp / 8) * width;

      uint8_t bmpFileHeader[14] = {
        'B', 'M',
        fileSize, fileSize >>  8, fileSize >> 16, fileSize >> 24, // size of file
        0, 0, //reserved
        0, 0, // reserved
        _dataOffset, _dataOffset >> 8, _dataOffset >> 16, _dataOffset >> 24 // offset to data, 14 + 40
      };

      uint8_t bmpInfoHeader[40] = {
        40, 0, 0, 0, // size of header
        width, width >> 8, width >> 16, width >> 24, // bmp width
        height, height >> 8, height >> 16, height >> 24, // bmp height
        1, 0, // must be 1
        bpp, bpp >> 8,  // bits per pixels
        0, 0, 0, 0,  // BI_RGB
        dataSize, dataSize >> 8, dataSize >> 16, dataSize >> 24, // Size of the raw bitmap data (including padding)
        0, 0, 0, 0,
        0, 0, 0, 0,
        colorsNumber, colorsNumber >> 8, colorsNumber >> 16, colorsNumber >> 24, // the number of colors in the color palette, or 0 to default to 2n
        0, 0, 0, 0
      };

      _file = SD.open(filename, FILE_WRITE);

      if (!_file)
      {
#ifdef _DEBUG
        Serial.println("ERR: can't create file");
#endif
        return false;
      }

      _write(bmpFileHeader, sizeof(bmpFileHeader));
      _write(bmpInfoHeader, sizeof(bmpInfoHeader));

      // creating color table for 8bits image
      for (uint16_t  i = 0; i < colorsNumber; ++i)
      {
        uint8_t clr = 255 * i / colorsNumber;
        _write(clr); //blue
        _write(clr); //green
        _write(clr); //red
        _write((uint8_t)0);
      }

      return true;
    }


    // filling bitmap with empty data
    void fillEmptyData()
    {
      for (uint16_t j = 0; j < _height; ++j)
      {
        for (uint16_t i = 0; i < _rowSize; ++i)
        {
          _write(uint8_t(255));
        }
      }
    }

    // writes one row of pixels
    // should be size of a width*bpp/8
    void writeRow(uint8_t* buf)
    {
      _write(buf, _width * _bpp / 8);

      //adding padding
      for (int i = 0; i < _paddingSize; ++i)
      {
        _write(uint8_t(0));
      }
    }


    // can be used if bitmap is already filled with some data, call fillEmptyData if needed
    void writePixel(uint32_t x, uint32_t y, uint8_t clr)
    {
      _file.seek(_dataOffset + y * _rowSize + x);
      _write(clr);
    }

    void flush()
    {
      _file.flush();
    }

    void close()
    {
      _file.close();
    }

    ~BmpWriter()
    {
      close();
    }

  private:

    static const uint8_t MAX_TRIES = 5;

    bool _write(uint8_t data)
    {
      uint8_t tries = 0;
      while (_file.write(data) != 1)
      {
        if (tries > MAX_TRIES)
        {
#ifdef _DEBUG
          Serial.println("ERR: file write, size 1");
#endif
          return false;
        }

        ++tries;
      }

      return true;
    }

    bool _write(uint8_t *buf, uint32_t size)
    {
      uint8_t tries = 0;

      while (_file.write(buf, size) != size)
      {
        if (tries > MAX_TRIES)
        {
#ifdef _DEBUG
          Serial.print("ERR: file write, size");
          Serial.println(size);
#endif
          return false;
        }

        ++tries;
      }

      return true;
    }


    File _file;
    uint16_t _width;
    uint16_t _height;
    uint8_t _bpp;
    uint8_t _paddingSize;
    uint16_t _rowSize;
    uint16_t _dataOffset;
};

#endif
// --- END OF FILE ---


