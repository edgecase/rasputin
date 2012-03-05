require 'tilt'
require 'sprockets/engines'

require "rasputin/version"
require "rasputin/handlebars/compiler"
require "rasputin/handlebars/template"

require "rasputin/slim" if defined? Slim
require "rasputin/haml" if defined? Haml

require "rasputin/require_preprocessor"

