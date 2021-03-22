module Cli
  module Ide
    class Finder
      attr_reader :available_ides

      def initialize
        @ide_map = ide_klasses.each_with_object({}) do |klass, map|
          map[klass.bundle_name] = klass
        end
        @available_ides = @ide_map.keys
      end

      def installed_apps
        @installed_apps ||= Dir.chdir(File.join("/", "Applications")) { Dir.glob("*.app") }
      end

      def installed_ide_klasses
        available_ides.reduce([]) do |ide_klasses, ide|
          if installed_apps.include?(ide)
            ide_klasses << @ide_map[ide]
          end
          ide_klasses
        end
      end

      private

      def ide_klasses
        @ide_klasses ||= Cli::Ide.constants.reduce([]) do |klasses, c|
          k = Cli::Ide.const_get(c)
          if k.is_a? Class and an_included_class(k)
            klasses << k
          end
          klasses
        end
      end

      def an_included_class(k)
        k != Finder and
          k != JetBrainsIde and
          k != PreferencesDirectory
      end
    end
  end
end
