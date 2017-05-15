# Keep the history of transactions
require_relative 'transaction'

class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def new_deposit(date, amount, balance)
    transaction = Transaction.new
    transaction.log_deposit(date, amount, balance)
    store_transaction
  end

  def new_withdrawal(date, amount, balance)
    transaction = Transaction.new
    transaction.log_withdrawal(date, amount, balance)
    store_transaction
  end

  def store_transaction
    @transactions << transaction.log
  end

end
