# Track spend and allow for deposits, withdrawals and print statements

class Account

  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = []
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if @balance >= amount
      @balance -= amount
    else
      raise "Insufficient funds: Please top up funds."
    end
  end

  

end
