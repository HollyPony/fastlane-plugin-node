module Fastlane
  module Actions
    class NpmAction < Action
      def self.run(params)
        # TODO
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Define and install a nodejs version"
      end

      def self.available_options
        [
            FastlaneCore::ConfigItem.new(key: :version,
                                         env_name: "FL_NODE_VERSION", # The name of the environment variable
                                         description: "Define Node version for build", # a short description of this parameter)
                                         optional: false)
        ]
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
