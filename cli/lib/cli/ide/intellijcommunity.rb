require "cli/ide/jet_brains_ide"
module Cli
  module Ide
    class Intellijcommunity < JetBrainsIde
      def self.bundle_name
        "IntelliJ IDEA CE.app"
      end

      def ide_pref_dir_name_without_version
        "IdeaIC"
      end

      def default_ide_pref_dir_version
        "2017.1"
      end
    end
  end
end
