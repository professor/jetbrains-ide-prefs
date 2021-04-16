require "cli/ide/preferences_directory"

module Cli
  module Ide
    class Rubymine < JetBrainsIde
      def self.bundle_name
        "RubyMine.app"
      end

      def ide_pref_dir_name_without_version
        "RubyMine"
      end

      def default_ide_pref_dir_version
        "2017.1"
      end
    end
  end
end
