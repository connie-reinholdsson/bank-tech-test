require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new }

  describe "#initialize" do
    it "so that I can start a new transaction, initialize transaction log with an empty array" do
      expect(transaction.log).to eq []
    end
  end
  #
  # describe "log_date" do
  #   it "so that I can log the time of my transactions, log the date it occurs" do
  #     transaction.log_date
  #     expect(transaction.log).to eq [{date: "15/05/2017"}]
  #   end
  # end

  describe "log_deposit" do
    it "so that I can log transactions, store the deposit in statement" do
      transaction.log_deposit("15/05/2017", 50, 50)
      expect(transaction.log).to eq [{date: "15/05/2017", credit: 50, balance: 50}]
    end
  end

  describe "log_withdrawal" do
    it "so that I can log withdrawals, store the withdrawal in statement" do
      transaction.log_withdrawal("15/05/2017", 50, -50)
      expect(transaction.log).to eq [{date: "15/05/2017", debit: 50, balance: -50 }]
    end
  end
end
