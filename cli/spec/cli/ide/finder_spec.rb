module Cli::Ide
  describe Finder do
    let(:finder) { Finder.new }

    describe "#available_ides" do
      it "knows about all of the available IDE classes" do
        expect(finder.available_ides.size).to eq(9)
      end
    end
  end
end
