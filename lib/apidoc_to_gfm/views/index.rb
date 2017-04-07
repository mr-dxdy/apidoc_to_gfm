module ApidocToGFM
  module Views
    class Index < ::RspecApiDocumentation::Views::MarkdownIndex
      include Helpers

      def initialize(index, configuration)
        super
        self.template_name = "rspec_api_documentation/gfm_index"
        self.template_path = template_path_from_gem  unless template_exists?
      end

      def examples
        @index.examples.map { |example| Example.new(example, @configuration) }
      end
    end
  end
end
