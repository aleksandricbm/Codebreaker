class UI
  attr_accessor :user_name, :user_number
  def initialize
    @user_name=''
  end

  def enter_name
    puts "Dear friend,\n Please, puts your name:\n"
    @user_name = gets.chomp
  end

  def enter_number
    puts "Please, enter 4 number for 1 to 6:\n"
    @user_number = gets.chomp
  end
end
