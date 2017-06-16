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

    describe "#match_count" do
      it "with no matches" do
        checker = Checker.new('1234','5555')
        expect(checker.match_count).to eq 0
      end

      it "with 1 exact match" do
        checker = Checker.new('1234','1555')
        expect(checker.match_count).to eq 1
      end

      it "with 1 number match" do
        checker = Checker.new('1234','2555')
        expect(checker.match_count).to eq 0
      end

      it "with 1 exact match and 1 number match" do
        checker = Checker.new('1234','1525')
        expect(checker.match_count).to eq 1
      end
    end

    describe "#match_number" do
      it "with no matches" do
        checker = Checker.new('1234','5555')
        expect(checker.match_number).to eq 0
      end

      it "with 1 number match" do
        checker = Checker.new('1234','2555')
        expect(checker.match_number).to eq 1
      end

      it "with 1 exact match" do
        checker = Checker.new('1234','1555')
        expect(checker.match_number).to eq 0
      end

      it "with 1 exact match and 1 number match" do
        checker = Checker.new('1234','1525')
        expect(checker.match_number).to eq 1
      end
      it "with 1 exact match duplicated in guess" do
        checker = Checker.new('1234', '1155')
        expect(checker.match_number).to eq 0
      end
    end
  end
end
