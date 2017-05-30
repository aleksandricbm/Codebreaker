module Codebreaker
  RSpec.describe Game do
    let(:game){Game.new}
    @secret_code

    before do
      game.start
      @secret_code = game.instance_variable_get(:@secret_code)
    end

    context '#start game' do

      it 'generated secret code is empty?' do
        expect(@secret_code).not_to be_empty
      end

      it 'generated secret code with 4 numbers and from 1 to 6?' do
        expect(@secret_code.size).to eq(4)
        expect(@secret_code).to match(/^[1-6]{4}/)
      end
    end
  end
end
