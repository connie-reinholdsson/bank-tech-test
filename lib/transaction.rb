# Logs each transactio in the correct format

class Transaction

  attr_reader :statement

  def initialize
    @statement = []
  end

  def log_deposit(amount)
    @statement << {credit: amount}
  end


end
