# Track spend and allow for deposits, withdrawals and print statements

class Account

  attr_reader :balance

  def initialize
    @balance = 0
    @date = "Default date"
    @statement = []
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    fail "Insufficient funds: Please top up funds." if amount > @balance
    @balance -= amount
  end

  private

  def current_date
    @date = Time.now.strftime("%d/%m/%y")
  end

end
