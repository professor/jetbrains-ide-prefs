require 'cli/ide/jet_brains_ide'

module Cli
  module Ide
    class Appcode < JetBrainsIde
      def self.bundle_name
        "AppCode.app"
      end

      def ide_pref_dir_name_without_version
        'AppCode'
      end

      def default_ide_pref_dir_version
        '2018.3'
      end
    end
  end
end
