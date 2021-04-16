require "cli/ide/jet_brains_ide"
module Cli
  module Ide
    class Pycharm < JetBrainsIde
      def self.bundle_name
        "PyCharm.app"
      end

      def ide_pref_dir_name_without_version
        "PyCharm"
      end

      def default_ide_pref_dir_version
        "2018.3"
      end
    end
  end
end
