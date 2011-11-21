module Bootstrap
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc 'Copy twitter/bootstrap assets into your rails application.'
      source_root File.expand_path('../../../../../vendor/assets', __FILE__)
      
      def copy_stylesheet
        copy_file 'stylesheets/bootstrap.min.css', 'vendor/assets/stylesheets/bootstrap/bootstrap.min.css'
      end
      
      def copy_javascripts
        ['alerts', 'buttons', 'dropdown', 'modal', 'popover', 'scrollspy', 'tabs', 'twipsy'].each do |feature|
          copy_file "javascripts/bootstrap-#{feature}.js", "vendor/assets/javascripts/bootstrap/bootstrap-#{feature}.js"
        end
      end
      
      def show_readme
        readme '../../lib/generators/bootstrap/install/templates/README' if behavior == :invoke
      end
    end
  end
end