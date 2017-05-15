# Logs each transactio in the correct format

class Transaction

  attr_reader :statement

  def initialize
    @statement = []
  end

  def log_deposit(amount, balance)
    @statement << {credit: amount, balance: balance}
  end

  def log_withdrawal(amount, balance)
    @statement << {debit: amount, balance: balance}
  end

end
