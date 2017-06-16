require_relative "spec_helper"
require 'yaml'

module Codebreaker
  RSpec.describe Game do
    let(:game){ Game.new }
    @secret_code

    before do
      game.start
      @secret_code = game.instance_variable_get(:@secret_code)
    end

    context 'check array values' do
      @arr = YAML.load_file('array_value.yml')
      @arr.each do |val|
        it '#answer' do
          game.instance_variable_set(:@secret_code,val[0])
          expect(val[2]).to eq game.attempt(val[1])
        end
      end
    end

    context '#start game' do

      it 'generated secret code is empty?' do
        expect(@secret_code).not_to be_empty
      end

      it 'generated secret code with 4 numbers and from 1 to 6?' do
        expect(@secret_code).to match(/^[1-6]{4}/)
      end

      it 'you won?' do
        game.instance_variable_set(:@secret_code,'1111')
        expect(game.won?('1111')).to be true
      end

      it 'show hint' do
        expect(@secret_code).to include(game.hint)
      end
    end
  end
end
