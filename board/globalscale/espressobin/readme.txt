GlobalScale ESPRESSObin
=======================

In order to launch an image built with this Buildroot configuration,
you will need to load `uEnv.txt` into the onboard SPI flash.

Configuring U-Boot
------------------
- Insert freshly build microSD card.

- Connect a Micro-USB cable to the port above the microSD card slot, and the
  other end to your computer. This will create a serial device such as
  /dev/ttyUSB0 on Linux.

- Open this port with a serial console program such as screen, minicom, or
  PuTTY with a baud rate of 115200. ( e.g. `screen /dev/ttyUSB0 115200` )

- Apply 12V power to the board, and watch the boot sequence in your terminal
  emulator.

- Interrupt the boot process with any key when prompted to arrive at a 
  Marvell customized u-boot prompt. `Marvell>> `

- Run the following commands to import `uEnv.txt` from the microSD card:

  ```
   mmc dev 0
   ext4load mmc 0 $loadaddr /boot/uEnv.txt
   env import -t $loadaddr $filesize
  ```

- Save the environment:

  ```
   saveenv
  ```

- Finally, boot into the new new system:

  ```
   boot
  ```
