# Track spend and allow for deposits, withdrawals and print statements
require_relative 'statement'

class Account

  attr_reader :balance, :date, :statement

  MINIMUM_BALANCE = 0

  def initialize(balance = MINIMUM_BALANCE)
    @balance = balance
    @date = "Default"
    @statement = Statement.new
  end

  def deposit(amount)
    @balance += amount
    log_deposit(amount)
  end

  def withdraw(amount)
    fail "Insufficient funds: Please top up funds." if amount > @balance
    @balance -= amount
    log_withdrawal(amount)
  end

  def log_deposit(amount)
    current_date
    @statement.new_deposit(self.date, amount, self.balance)
  end

  def log_withdrawal(amount)
    current_date
    @statement.new_withdrawal(self.date, amount, self.balance)
  end

  private

  def current_date
    @date = Time.now.strftime("%d/%m/%y")
  end

end
