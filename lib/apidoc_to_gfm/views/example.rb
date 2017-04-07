# -*- encoding : utf-8 -*-

module ApidocToGFM
  module Views
    class Example < ::RspecApiDocumentation::Views::MarkdownExample
      include Helpers

      def initialize(example, configuration)
        super
        self.template_name = "rspec_api_documentation/gfm_example"
        self.template_path = template_path_from_gem  unless template_exists?
      end

      # Gitlab works only english filenames!
      def dirname
        transliterate(super).downcase
      end

      def filename
        transliterate(super).downcase
      end

      def parameters
        super.map do |parameter|
          parameter.merge({
            :required => parameter[:required] ? 'yes' : 'no',
          })
        end
      end

      def extension
        @extension ||= 'md'.freeze
      end

      private

      def transliterate(string, replacement = '_')
        ActiveSupport::Inflector.transliterate string, replacement
      end
    end
  end
end
