This projects describes a way how to build cheap and simple thermal mechanical camera.

Main characteristics:
 Making a 400x200 image takes about 30 min. 
 The output bmp image is written to the MicroSD card.

Hardware requirements:
 1. Metallized mirror - "Survival Solar Lighter" (1$).
 2. 3D printed mounts for motors (8$)
 3. Two stepper motors - 28byj-48, these motors will be used as bipolar motors (2$).
 4. Two motor controllers based on L293D (2$).
 5. Thermopile sensor:
   a) TS118, needs additional circuitry for amplifying the signal (4$).
   b) MLX90614ESF, has circuitry inside so you don't need to create one (5$) (Recommended choice!).
 6. Amplifying circuitry, needed only if you're going to use TS118.
 7. Arduino (3$)
 8. MicroSD card module for arduino (1$)


Arduino code:
a) For MLX90614ESF, this sensor returns temperature by I2C protocol.
b) For TS118, this sensor returns analogue signal, which will be converted to temperature afterwards.

Circuitry for amplifying the signal for TS118:
a) Based on INA128 (low noise output signal but has more components and more expensive) (3$)
b) Based on LM358 (high noise but has very few components and very cheap) (1$)

The whole project costs around 25$.

Description of folders:

1. arduino\scanner - contains arduino code for running the scanning process.
2. circuits - contains circuits for stepper controller and signal amplification.
3. sample-images - contains thermal images.
4. camera-photos - contains photos of already built scanner.

Work is still in progress....
