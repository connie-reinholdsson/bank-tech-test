require 'bank_account'

describe Account do
  subject(:account) { described_class.new }

  describe "#initialize" do
    it "so that I can open a new account, initialize with 0 balance" do
      expect(account.balance).to eq 0
    end
  end
end
