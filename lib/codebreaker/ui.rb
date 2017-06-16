class UI
  attr_accessor :user_name, :user_number
  def initialize
    @user_name=''
  end

  def enter_name
    puts "Dear friend,\n Please, puts your name:\n"
    @user_name = gets.chomp
    if @user_name.empty?
      puts "\nerror user name\n\n"
      enter_name
    end
  end

  def enter_number
    puts "Please, enter 4 number for 1 to 6:\n"
    @user_number = gets.chomp

    unless @user_number[/^[1-6]{4}/]
      puts "\nerror input type format\n"
      enter_number
    end
  end

  def game_result(result)
    puts "You result [#{result}] "
  end

end
