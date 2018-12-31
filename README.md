# N34T

:sparkles: A (tiny) Logging Package for Luvit.

## Installation

```bash
lit install mrtnpwn/N34T
```

## Usage

```lua
local N34T = require('N34T')

local logger = N34T() -- or N34T(level) to limit the log level!
  --- logger:trace(...)
  --- logger:info(...)
  --- logger:warn(...)
  --- logger:error(...)
  --- logger:fatal(...)

logger:info('Working out of the box')

logger:add('hello_{hello}.log', {
  hello = 'world'
}) -- logfiles and formats1!1!

logger:info('Simple and easy!') -- written in hello_world.log
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
