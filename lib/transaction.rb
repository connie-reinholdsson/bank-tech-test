# Logs each transaction in specified format

class Transaction

  attr_reader :log

  def initialize
    @log = []
  end

  def log_deposit(date, amount, balance)
    self.log << {date: date, credit: amount, balance: balance}
  end

  def log_withdrawal(date, amount, balance)
    self.log << {date: date, debit: amount, balance: balance}
  end

end
