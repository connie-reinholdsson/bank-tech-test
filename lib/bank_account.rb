# Track spend and allow for deposits, withdrawals and print statements
require_relative 'transaction'

class Account

  attr_reader :balance, :date

  def initialize
    @balance = 0
    @date = "Default date"
  end

  def deposit(amount)
    @balance += amount
    log_deposit(amount)
  end

  def withdraw(amount)
    fail "Insufficient funds: Please top up funds." if amount > @balance
    @balance -= amount
  end

  def log_deposit(amount)
    transaction_log = TransactionLog.new
    current_date
    transaction_log.new_deposit(self.date, amount, self.balance)
  end

  private

  def current_date
    @date = Time.now.strftime("%d/%m/%y")
  end

end
