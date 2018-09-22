# N34T
<<<<<<< HEAD

A Logging Package for Luvit.

![N34T Preview](https://image.ibb.co/hN7Pmp/n34t_colors.png)

## Installation

```bash
lit install mrtnpwn/N34T
```

## Usage

N34T has some NEAT functions for logging, these are:

* ``N34T.info(message)``
* ``N34T.warn(message)``
* ``N34T.success(message)``
* ``N34T.error(message)``

and ``N34T.output``, this one is the name of the output file (if you want to have one).

## Example

```lua
local l = require('N34T')
l.output = 'my-output.log'

l.info('Info Message, Yay!')
--> will make a file called 'my-output.log' with the info message.
```

## License

```text
MIT License

Copyright (c) 2018 Martín Aguilar

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
=======
A Logging Package for Luvit.
>>>>>>> b25e9c9bd5d342a37e8cd211b1bd84a827be4855
