require 'transaction_log'

describe TransactionLog do
  subject(:transaction_log) { described_class.new }

  describe "#initialize" do
    it "so that open a new account, initialize with an empty transaction log" do
      expect(transaction_log.statement).to eq []
    end
  end
end
