module ApidocToGFM
  module Writers
    class Writer < ::RspecApiDocumentation::Writers::MarkdownWriter
      def markup_index_class
        Views::Index
      end

      def markup_example_class
        Views::Example
      end
    end
  end
end
