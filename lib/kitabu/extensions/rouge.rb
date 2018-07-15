module Rouge
  module Plugins
    module Redcarpet
      def rouge_formatter(lexer)
        options = lexer.respond_to?(:options) ? lexer.options : {}
        extra_class = options["css_class"]
        enable_line_numbers = options["line_numbers"] ? true : false
        Formatters::HTMLLegacy.new({css_class: "highlight #{lexer.tag} #{extra_class}", line_numbers: enable_line_numbers}.merge(options))
      end
    end
  end
end
