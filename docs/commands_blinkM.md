# Commands

## rgb(red=0, green=0, blue=0) → nil

Public: Sets the color of the BlinkM RGB LED to the specified combination of RGB color provided (red, green and blue values should be between `0` and `255`).

- **red** - params, red value
- **green** - params, green value
- **blue** - params, blue

** Returns nil **

## fade(red=0, green=0, blue=0) → nil

Public: Fades the color of the BlinkM RGB LED to the specified combination of RGB color provided (red, green and blue values should be between `0` and `255`).

- **red** - params, red value
- **green** - params, green value
- **blue** - params, blue

** Returns nil **

## firmware_version → String

Public: Returns an sring describing the I2C firmware version being used.

** Returns string **

## color → [red, green, blue] (integer)

Public: Returns an array containing the RGB values for the current color (all integer between `0` and `255`).

** Returns [red, green, blue] (integer) **