module Codebreaker
  class Game
    def initialize
      @secret_code = ''
    end

    def start
      @secret_code = ''
      4.times { @secret_code.insert(-1,rand(1..6).to_s) }
    end

    def attempt(code)
      puts "secret_code: #{@secret_code}\nuser code: #{code}"
    end
  end
end
