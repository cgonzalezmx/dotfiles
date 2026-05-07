local lexers = vis.lexers

local colors = {
    ['black']       = '#48483e',
    ['grey']        = '#76715e',
    ['red']         = '#f92672',
    ['green']       = '#a6e22e',
    ['yellow']      = '#e6db74',
    ['blue']        = '#66d9ef',
    ['purple']      = '#ae81ff',
    ['cyan']        = '#a1efe4',
    ['orange']      = '#fd971f',
    ['white']       = '#acada1',
}

lexers.colors = colors

local bg = ',back:#272822,'
local fg = ',fore:#f8f8f2,'
--local bg = ',back:default,'
--local fg = ',fore:default,'

lexers.STYLE_DEFAULT    = bg..fg
lexers.STYLE_NOTHING    = bg
lexers.STYLE_CLASS      = 'fore:'..colors.yellow
lexers.STYLE_COMMENT    = 'fore:'..colors.grey..',italics'
lexers.STYLE_CONSTANT   = 'fore:'..colors.purple
lexers.STYLE_DEFINITION = 'fore:'..colors.purple
lexers.STYLE_ERROR      = 'fore:'..colors.red..',italics'
lexers.STYLE_FUNCTION   = 'fore:'..colors.green
lexers.STYLE_KEYWORD    = 'fore:'..colors.red
lexers.STYLE_LABEL      = 'fore:'..colors.red
lexers.STYLE_NUMBER     = 'fore:'..colors.purple
lexers.STYLE_OPERATOR   = 'fore:'..colors.red
lexers.STYLE_REGEX      = 'fore:'..colors.cyan
lexers.STYLE_STRING     = 'fore:'..colors.yellow
lexers.STYLE_PREPROCESSOR = 'fore:'..colors.red
lexers.STYLE_TAG        = 'fore:'..colors.orange
lexers.STYLE_TYPE       = 'fore:'..colors.blue..',italics'
lexers.STYLE_VARIABLE   = 'fore:'..colors.blue
lexers.STYLE_WHITESPACE = 'fore:'..colors.grey
lexers.STYLE_IDENTIFIER = fg
lexers.STYLE_EMBEDDED   = 'fore:'..colors.red
lexers.STYLE_OTHER      = 'fore:'..colors.white

lexers.STYLE_LINENUMBER = 'fore:'..colors.grey
lexers.STYLE_LINENUMBER_CURSOR = 'back:'..colors.grey..fg
lexers.STYLE_CURSOR     = 'reverse'
lexers.STYLE_CURSOR_PRIMARY = lexers.STYLE_CURSOR..fg
lexers.STYLE_CURSOR_LINE = 'back:'..colors.black
lexers.STYLE_COLOR_COLUMN = 'back:'..colors.black
lexers.STYLE_SELECTION  = 'back:'..colors.black
lexers.STYLE_STATUS     = 'reverse'
lexers.STYLE_STATUS_FOCUSED = 'back:'..colors.black..fg..'bold'
lexers.STYLE_SEPARATOR  = lexers.STYLE_DEFULT
lexers.STYLE_INFO       = 'fore:default,back:default,bold'
lexers.STYLE_EOF = ''

