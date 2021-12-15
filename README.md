Building a cheap and simple thermal, mechanical camera.

Specs:
 Taking 400x200 image takes roughly 30 min. 

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


Overall cost - 25$.

Folders descriptions:

1. arduino\scanner - contains arduino code for running the scanning process.
2. circuits - contains circuits for stepper controller and signal amplification.
3. 3d-models - containts 3d models of mounts.
4. sample-images - contains thermal images.
5. scanner-photos - contains photos of a scanner.
