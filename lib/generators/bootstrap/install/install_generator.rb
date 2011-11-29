module Bootstrap
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc 'Copy twitter/bootstrap assets into your rails application.'
      source_root File.expand_path('../templates', __FILE__)
      
      def copy_stylesheet
        copy_file '../../../../../vendor/assets/stylesheets/bootstrap.min.css', 'vendor/assets/stylesheets/bootstrap/bootstrap.min.css'
        copy_file 'scaffolds.css.scss', 'app/assets/stylesheets/scaffolds.css.scss'
      end
      
      def copy_javascripts
        available_bootstrap_javascripts.each do |javascript|
          copy_file "../../../../../vendor/assets/javascripts/#{javascript}", "vendor/assets/javascripts/bootstrap/#{javascript}"
        end
      end
      
      def copy_erb_scaffold_views
        available_views.each do |view|
          copy_file "#{view}.html.erb", "lib/templates/erb/scaffold/#{view}.html.erb"
        end
      end
      
      def show_readme
        readme 'README' if behavior == :invoke
      end
      
      private
      
      def available_bootstrap_javascripts
        %w(bootstrap-alerts.js bootstrap-buttons.js bootstrap-dropdown.js bootstrap-modal.js bootstrap-popover.js bootstrap-scrollspy.js bootstrap-tabs.js bootstrap-twipsy.js)
      end
      
      def available_views
        %w(_form edit index new show)
      end
    end
  end
end
