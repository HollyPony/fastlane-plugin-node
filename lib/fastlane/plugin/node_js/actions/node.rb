module Fastlane
  module Actions
    class NodeAction < Action
      def self.run(params)
        UI.message "Test #{['left', 'right']}"
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Define and install a nodejs version"
      end

      def self.available_options
        []
      end

      def self.output
        [
            ['NODE_VERSION', 'Node version to use with nvm']
        ]
      end

      def self.authors
        ["https://github.com/HollyPony/"]
      end

      def self.is_supported?(platform)
        [:android, :ios, :mac].include?(platform)
      end
    end
  end
end
