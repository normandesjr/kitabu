module Rouge
  module Plugins
    module Redcarpet
      def rouge_formatter(lexer)
        options = lexer.respond_to?(:options) ? lexer.options : {}
        extra_class = options["css_class"]
        Formatters::HTMLLegacy.new({css_class: "highlight #{lexer.tag} #{extra_class}"}.merge(options))
      end
    end
  end
end
