class Checker

  def initialize (secret_number, user_number)
    @secret_number, @user_number = secret_number, user_number
  end

  def match_count
    (0..3).inject(0) do |count, key|
      count + ((@secret_number[key] == @user_number[key]) ? 1 : 0)
    end
  end

  def match_number
    user_number_temp = @user_number.split('')
    secret_number_temp = @secret_number.split('')
    count = 0
    secret_number_temp.inject(0) do |_,key|
      (count += 1 ) if delete_number(user_number_temp,key)
    end
    count
  end

  def delete_number(number, key)
    number.delete_at(number.index(key)) if number.index(key)
  end
end
