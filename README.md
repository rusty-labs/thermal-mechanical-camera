This projects describes a way how to build cheap and simple thermal mechanical camera.

Main characteristics:
 Making a 400x200 image takes about 30 min. 
 The output bmp image is written to the MicroSD card.

Hardware requirements:
 1. Metallized, parabolic mirror - "Survival Solar Lighter".
 2. 3D printed mounts for motors and mirror.
 3. Two stepper motors - 28byj-48, these motors will be used as bipolar motors.
 4. Two motor controllers based on L293D.
 5. Thermopile sensor:

   a) TS118, needs additional circuitry for amplifying the signal.
   
   b) MLX90614ESF, has circuitry inside so you don't need to create one (Recommended choice!).
   
 6. Amplifying circuitry, needed only if you're going to use TS118.
 7. Arduino
 8. MicroSD card module for arduino


Arduino code:

   a) For MLX90614ESF, this sensor returns temperature by I2C protocol.
   
   b) For TS118, this sensor returns analogue signal, which will be converted to temperature afterwards.

Circuitry for amplifying the signal for TS118:
   Based on INA128 (low noise output signal but has more components and more expensive)

The whole project costs around 25$.

Description of folders:

1. arduino\scanner - contains arduino code for running the scanning process.
2. circuits - contains circuits for stepper controller and signal amplification.
3. 3d-models - containts 3d models of mounts.
4. sample-images - contains thermal images.
5. camera-photos - contains photos of already built scanner.

Work is still in progress....
