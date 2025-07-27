# Microkorg

This gem can be used to inspect Microkorg2 programs.
For now it can only inspect some attributes of programs, but it's growing fast.

## Installation

Clone the repo and `bundle exec exe/microkorg`.

Or you can build it with `rake build`, and install with `sudo gem install ./microkorg-0.1.0.gem`


## Usage

`bundle exec exe/microkorg`

OR

```ruby
require 'microkorg'

filename = 'program/C_A6_Init_Program.mk2prog'
content = File.read filename
program = Microkorg::Program.read content
puts program
```

## Development

I am using `xxd -g 1 name_of_program.mk2prog` to transform binary to hex representation.
Then I make some changes on the mk2, save the program, download to my notebook, export hex, compare the differences and map.

## Contributing

Send me patches!

