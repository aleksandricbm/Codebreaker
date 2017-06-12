module Codebreaker
  class Game
    def initialize
      @secret_code = ''
      @result = '';
    end

    def start
      @secret_code = ''
      4.times { @secret_code.insert(-1,rand(1..6).to_s) }
    end

    def attempt(code)
      raise "Please, enter 4 number for 1 to 6" if code.to_i !~ /^[1-6]{4}/
      check = Checker.new(@secret_code,code)
      puts @secret_code
      @result = "#{'+'*check.match_count}#{'-'*check.match_number}#{'_'*(@secret_code.size-check.match_count-check.match_number)}"
      puts "\nresult: [#{@result}]"
      puts "You won" if won?(code)
    end

    def won?(code)
      @secret_code == code
    end

    def save?
      File.open('./data.yml', 'w') { |f| f.write @result}
    end

  end
end
