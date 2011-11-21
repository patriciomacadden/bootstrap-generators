module Bootstrap
  module Generators
    class LayoutGenerator < Rails::Generators::NamedBase
      desc 'Create a bootstrap layout.'
      source_root File.expand_path('../templates', __FILE__)
      class_option :type, default: 'application', desc: 'Type of layout that will be generated (application, hero, fluid or container-app).'
      
      def initialize(args = [], options = {}, config = {})
        super
        @layout_name = args.first
      end
      
      def file_name
        @layout_name.underscore
      end
      
      def camelized_application_name
        application_name.camelize
      end
      
      def create_layout
        template "#{options['type']}.html.erb", "app/views/layouts/#{file_name}.html.erb"
      end
      
      def create_helper
        copy_file 'layout_helper.rb', 'app/helpers/layout_helper.rb'
      end
      
      def create_stylesheet_if_necessary
        copy_file 'container-app.scss.css', 'app/assets/stylesheets/container-app.scss.css' if options['type'] == 'container-app'
      end
    end
  end
end
