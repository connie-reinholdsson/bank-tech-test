# Keep the history of transactions

class TransactionLog

  attr_reader :statement

  def initialize
    @statement = []
  end
end
