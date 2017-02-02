require 'fastlane/plugin/node_js/version'

module Fastlane
  module NodeJs
    # Return all .rb files inside the "actions" and "helper" directory
    def self.all_classes
      Dir[File.expand_path('**/{actions,helper}/*.rb', File.dirname(__FILE__))]
    end
  end
end

# By default we want to import all available actions and helpers
# A plugin can contain any number of actions and plugins
Fastlane::NodeJs.all_classes.each do |current|
  require current
end