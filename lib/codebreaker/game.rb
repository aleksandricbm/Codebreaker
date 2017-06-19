module Codebreaker
  class Game
    def initialize
      @secret_code = ''
      @result = ''
    end

    def start
      @secret_code = ''
      4.times { @secret_code.insert(-1,rand(1..6).to_s) }
    end

    def attempt(code)
      return "++++" if won?(code)
      check = Checker.new(@secret_code,code)
      result(check.match_count,check.match_number)
    end

    def hint
      @secret_code[rand(0..3)]
    end

    def won?(code)
      @secret_code == code
    end

    def result(match_qty,match_number)
      "#{'+'*match_qty}#{'-'*(match_number-match_qty)}"
    end

  end
end
