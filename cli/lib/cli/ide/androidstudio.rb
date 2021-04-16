require "cli/ide/jet_brains_ide"
module Cli
  module Ide
    class Androidstudio < JetBrainsIde
      def self.bundle_name
        "Android Studio.app"
      end

      def ide_pref_dir_name_without_version
        "AndroidStudio"
      end

      def default_ide_pref_dir_version
        "1.3"
      end
    end
  end
end
