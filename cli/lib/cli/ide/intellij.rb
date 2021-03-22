require "cli/ide/jet_brains_ide"
module Cli
  module Ide
    class Intellij < JetBrainsIde
      def self.bundle_name
        "IntelliJ IDEA.app"
      end

      def ide_pref_dir_name_without_version
        "IntelliJIdea"
      end

      def default_ide_pref_dir_version
        "2017.3"
      end
    end
  end
end
