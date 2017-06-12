require_relative "spec_helper"

module Codebreaker

  RSpec.describe Checker do
    describe "#number match count" do

      it 'no matches found' do
        checker = Checker.new("1111","4234")
        expect(checker.match_count).to eq(0)
      end

      it 'number position is found' do
        checker = Checker.new("2432","1234")
        expect(checker.match_count).to be > 0
      end

      it 'number is found' do
        checker = Checker.new("1122","1234")
        expect(checker.match_number).to be >0
      end
    end
  end
end
