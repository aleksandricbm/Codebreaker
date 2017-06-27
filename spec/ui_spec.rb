require_relative "spec_helper"

module Codebreaker

  RSpec.describe UI do
    let(:ui){ UI.new }

    describe "show UI" do

      it 'check user name' do
        allow(ui).to receive(:gets).and_return('Dave')
        ui.enter_name
        expect(ui.instance_variable_get(:@user_name)).not_to be_empty
      end

      it 'check puts with 4 numbers for 1 to 6' do
        allow(ui).to receive(:gets).and_return('1222')
        ui.enter_number
        @user_number = ui.instance_variable_get(:@user_number)
        expect(@user_number.size).to eq(4)
        expect(@user_number).to match(/^[1-6]{4}/)
      end
    end
  end

end
