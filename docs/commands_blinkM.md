# Commands

## rgb(red=0, green=0, blue=0) 

Sets the color of the BlinkM RGB LED to the specified combination of RGB color provided (red, green and blue values should be between `0` and `255`).

##### Params

- **red** - params, red value
- **green** - params, green value
- **blue** - params, blue

##### Returns

`nil`

## fade(red=0, green=0, blue=0) 

Fades the color of the BlinkM RGB LED to the specified combination of RGB color provided (red, green and blue values should be between `0` and `255`).

##### Params

- **red** - params, red value
- **green** - params, green value
- **blue** - params, blue

##### Returns

`nil`

## firmware_version 

Returns an sring describing the I2C firmware version being used.

##### Params

`no params`

##### Returns

`String`

## color 

Returns an array containing the RGB values for the current color (all integer between `0` and `255`).

##### Params

`no params`

##### Returns

`[red, green, blue] (integer)`
