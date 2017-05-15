require 'statement'

describe Statement do
  subject(:statement) { described_class.new }

  describe "#initialize" do
    it "so that open a new account, initialize with an empty transaction log" do
      expect(statement.transactions).to eq []
    end
  end

  describe "#new_deposit" do
    it "so that I can view my transactions, I want to see the deposits on my statement" do
      statement.new_deposit("15/05/2017", 50, 50)
        expect(statement.transactions).to eq [[{:date=>"15/05/2017", :credit=>50, :balance=>50}]]
    end
  end

  describe "#new_withdrawal" do
    it "so that I can view my transactions, I want to see the withdrawals on my statement" do
      statement.new_withdrawal("15/05/2017", 50, 0)
        expect(statement.transactions).to eq [[{:date=>"15/05/2017", :debit=>50, :balance=>0}]]
    end
  end
end
