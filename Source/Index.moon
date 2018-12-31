-- MIT License
-- See LICENSE for more details.

pp = require 'pretty-print'
sys = require('ffi').os

import print from pp

-- Format Utility (from rxi/lume)

format = (str, vars) ->
  return str if not vars

  f = (x) ->
    return tostring vars[x] or vars[tonumber x] or "{#{x}}"
 
  return (str\gsub "{(.-)}", f)

-- Check if OS is Windows or not

checkpath = ->
  if sys == 'Windows' or require('ffi').os == 'Windows'
    return '\\'
  else
    return '/'

-- Split utility for Paths

split = (s, delimiter) ->
  result = {}
  for match in (s..delimiter)\gmatch("(.-)"..delimiter)
    table.insert(result, match)

  return result

--> N34T by mrtnpwn <--

class N34T
  new: (level = 'trace') =>
    @COLORSTHEME = theme
    @LEVEL = level

    pp.loadColors pp.theme[256]

    @LEVELS =
      'trace': 1
      'info': 2
      'warn': 3
      'error': 4
      'fatal': 5

  add: (filename, variables) =>
    if variables
      @LOGFILE = format filename, variables
    else
      @LOGFILE = filename

  remove: =>
    os.remove @LOGFILE
    @LOGFILE = nil

  -- Levels
  trace: (...) =>
    if @LEVELS['trace'] < @LEVELS[@LEVEL]
      return

    m = ...
    pat = {}
    deb = debug.getinfo 2, 'Sl'
    p = split deb.short_src, checkpath!
    table.insert pat, p[#p - 1]
    table.insert pat, p[#p]
    pat = table.concat pat, '/'
    line = pat .. ':' .. deb.currentline
    print format '{date} |  {level} | {message}', {
      'date': "#{pp.color 'quotes'}#{os.date '%c'}#{pp.color 'property'}"
      'level': "#{pp.color 'userdata'}TRACE#{pp.color 'property'}"
      'message': "#{pp.color 'table'}#{line}#{pp.color 'property'} - #{pp.color 'userdata'}#{m or ...}#{pp.color 'property'}"
    }

    if @LOGFILE
      with io.open @LOGFILE, 'a'
        \write "#{os.date '%c'} |  TRACE | #{m or ...}\n"
        \close!

  info: (...) =>
    if @LEVELS['info'] < @LEVELS[@LEVEL]
      return

    m = ...
    pat = {}
    deb = debug.getinfo 2, 'Sl'
    p = split deb.short_src, checkpath!
    table.insert pat, p[#p - 1]
    table.insert pat, p[#p]
    pat = table.concat pat, '/'
    line = pat .. ':' .. deb.currentline
    print format '{date} |  {level}  | {message}', {
      'date': "#{pp.color 'quotes'}#{os.date '%c'}#{pp.color 'property'}"
      'level': "#{pp.color 'string'}INFO#{pp.color 'property'}"
      'message': "#{pp.color 'table'}#{line}#{pp.color 'property'} - #{pp.color 'string'}#{m or ...}#{pp.color 'property'}"
    }

    if @LOGFILE
      with io.open @LOGFILE, 'a'
        \write "#{os.date '%c'} |  INFO  | #{m or ...}\n"
        \close!

  warn: (...) =>
    if @LEVELS['warn'] < @LEVELS[@LEVEL]
      return

    m = ...
    pat = {}
    deb = debug.getinfo 2, 'Sl'
    p = split deb.short_src, checkpath!
    table.insert pat, p[#p - 1]
    table.insert pat, p[#p]
    pat = table.concat pat, '/'
    line = pat .. ':' .. deb.currentline
    print format '{date} |  {level}  | {message}', {
      'date': "#{pp.color 'quotes'}#{os.date '%c'}#{pp.color 'property'}"
      'level': "#{pp.color 'boolean'}WARN#{pp.color 'property'}"
      'message': "#{pp.color 'table'}#{line}#{pp.color 'property'} - #{pp.color 'boolean'}#{m or ...}#{pp.color 'property'}"
    }

    if @LOGFILE
      with io.open @LOGFILE, 'a'
        \write "#{os.date '%c'} |  WARN  | #{m or ...}\n"
        \close!
  
  error: (...) =>
    if @LEVELS['error'] < @LEVELS[@LEVEL]
      return

    m = ...
    pat = {}
    deb = debug.getinfo 2, 'Sl'
    p = split deb.short_src, checkpath!
    table.insert pat, p[#p - 1]
    table.insert pat, p[#p]
    pat = table.concat pat, '/'
    line = pat .. ':' .. deb.currentline
    print format '{date} |  {level} | {message}', {
      'date': "#{pp.color 'quotes'}#{os.date '%c'}#{pp.color 'property'}"
      'level': "#{pp.color 'thread'}ERROR#{pp.color 'property'}"
      'message': "#{pp.color 'table'}#{line}#{pp.color 'property'} - #{pp.color 'thread'}#{m or ...}#{pp.color 'property'}"
    }

    if @LOGFILE
      with io.open @LOGFILE, 'a'
        \write "#{os.date '%c'} |  ERROR | #{m or ...}\n"
        \close!

  fatal: (...) =>
    if @LEVELS['fatal'] < @LEVELS[@LEVEL]
      return
    m = ...
    pat = {}
    deb = debug.getinfo 2, 'Sl'
    p = split deb.short_src, checkpath!
    table.insert pat, p[#p - 1]
    table.insert pat, p[#p]
    pat = table.concat pat, '/'
    line = pat .. ':' .. deb.currentline
    print format '{date} |  {level} | {message}', {
      'date': "#{pp.color 'quotes'}#{os.date '%c'}#{pp.color 'property'}"
      'level': "#{pp.color 'err'}FATAL#{pp.color 'property'}"
      'message': "#{pp.color 'table'}#{line}#{pp.color 'property'} - #{pp.color 'err'}#{m or ...}#{pp.color 'property'}"
    }

    if @LOGFILE
      with io.open @LOGFILE, 'a'
        \write "#{os.date '%c'} |  FATAL | #{m or ...}\n"
        \close!

N34T._VERSION = '2.0.0'
N34T._AUTHOR = 'mrtnpwn'

return N34T
