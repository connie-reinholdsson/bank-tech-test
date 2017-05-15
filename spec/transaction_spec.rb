require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new }

  describe "#initialize" do
    it "so that I can start a new transaction, initialize with an empty array" do
      expect(transaction.statement).to eq []
    end
  end

  describe "log_deposit" do
    it "so that I can log transactions, store the deposit in statement" do
      transaction.log_deposit(50)
      expect(transaction.statement).to eq [{credit: 50}]
    end
  end
end
