require 'rails/generators'

module Foundation
  module Generators
    class OverridesGenerator < ::Rails::Generators::Base
      # creates the foundation overrides file
      def add_overrides
        create_file overrides_file, File.read(settings_file)
        append_to_file overrides_file, "\n@import 'foundation';\n"
      end

      private

      def settings_file
        File.join(vendor_stylesheets_base_dir, 'foundation','_settings.scss')
      end

      def overrides_file
        File.join(stylesheets_base_dir, 'foundation_and_overrides.scss')
      end

      def vendor_stylesheets_base_dir
        File.join(
          File.dirname(__FILE__),
          '..',
          '..',
          '..',
          'vendor',
          'assets',
          'stylesheets'
        )
      end

      def stylesheets_base_dir
        File.join('app', 'assets', 'stylesheets')
      end
    end
  end
end
