module Rasputin
  class HandlebarsTemplate < Tilt::Template
    def self.default_mime_type
      'application/javascript'
    end

    def prepare; end

    def evaluate(scope, locals, &block)
      func = Rasputin::Handlebars.compile(data)
      "Ember.TEMPLATES[#{template_path(scope.logical_path).inspect}] = Ember.Handlebars.template(#{func});"
    end

    private
    
    def template_path(path)
      path = path.split('/')
      path.delete('templates')
      path.join('/')
    end

    def indent(string)
      string.gsub(/$(.)/m, "\\1  ").strip
    end
  end
end
