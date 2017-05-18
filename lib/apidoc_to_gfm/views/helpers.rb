module ApidocToGFM
  module Views
    module Helpers
      def template_exists?
        path = File.join(self.template_path, "#{self.template_name}.mustache")
        File.exists? path
      end

      def template_path_from_gem
        File.expand_path("../../../../templates", __FILE__)
      end
    end
  end
end
