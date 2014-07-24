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

## Documentation

Check out our [documentation](http://artoo.io/documentation/) for lots of information about how to use Artoo.

If you want to help us with some documentation on the site, you can go to [artoo.io branch](https://github.com/hybridgroup/artoo/tree/artoo.io) and then, follow the instructions.

## IRC

Need more help? Just want to say "Hello"? Come visit us on IRC freenode #artoo

## Contributing
* All active development is in the dev branch. New or updated features must be added to the dev branch. Hotfixes will be considered on the master branch in situations where it does not alter behaviour or features, only fixes a bug.
* All patches must be provided under the Apache 2.0 License
* Please use the -s option in git to "sign off" that the commit is your work and you are providing it under the Apache 2.0 License
* Submit a Github Pull Request to the appropriate branch and ideally discuss the changes with us in IRC.
* We will look at the patch, test it out, and give you feedback.
* Avoid doing minor whitespace changes, renamings, etc. along with merged content. These will be done by the maintainers from time to time but they can complicate merges and should be done seperately.
* Take care to maintain the existing coding style.
* Add unit tests for any new or changed functionality.
* All pull requests should be "fast forward"
  * If there are commits after yours use “git rebase -i <new_head_branch>”
  * If you have local changes you may need to use “git stash”
  * For git help see [progit](http://git-scm.com/book) which is an awesome (and free) book on git


(c) 2012-2014 The Hybrid Group
