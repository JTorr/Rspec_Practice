require 'spec_helper'

module CodeBreaker
  describe Game do
    describe "#start" do
      it "sends a welcome message" do
        output = double('output')
        game = Game.new(output)

        expect(output).to receive(:puts).with("Welcome to Codebreaker!")

        game.start
      end
      
      it "prompts for the first guess"
    end
  end
end
