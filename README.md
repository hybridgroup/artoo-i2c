# Artoo Drivers For i2c Devices

This repository contains the Artoo (http://artoo.io/) standard drivers for i2c devices.

Artoo is a open source micro-framework for robotics using Ruby.

For more information abut Artoo, check out our repo at https://github.com/hybridgroup/artoo

[![Code Climate](https://codeclimate.com/github/hybridgroup/artoo-i2c.png)](https://codeclimate.com/github/hybridgroup/artoo-i2c) [![Build Status](https://travis-ci.org/hybridgroup/artoo-i2c.png?branch=master)](https://travis-ci.org/hybridgroup/artoo-i2c)

## Installing

```
gem install artoo-i2c
```

## Using

Normally, this gem is automatically included as part of using an Artoo adaptor that can connect to your hardware. For example, artoo-arduino and artoo-raspi both make use of the drivers in this gem. 

```ruby
require 'artoo'

puts "Example here"
```

## Devices supported

The following i2c hardware devices have driver support:
- BlinkM RGB LED
- HMC6352 Digial Compass
- Wii Nunchuck Controller
- Wii Classic Controller


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
