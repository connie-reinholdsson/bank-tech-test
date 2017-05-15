require 'bank_account'

describe Account do
  subject(:account) { described_class.new }

  describe "#initialize" do
    it "so that I can open a new account, initialize with 0 balance" do
      expect(account.balance).to eq 0
    end
  end

  describe "deposit" do
    it "so that I can make payments, I want to be able to deposit money into my bank account" do
      expect{account.deposit(50)}.to change {account.balance}.by 50
    end
  end

  describe "withdraw" do
    it "so that I can make payments, I want to be able to withdraw money from my account" do
      account.deposit(60)
      expect{account.withdraw(50)}.to change {account.balance}.by -50
    end

    it "so that I don't end up with a debt, I want to see an error message if there are insufficient funds" do
        expect{account.withdraw(1)}.to raise_error "Insufficient funds: Please top up funds."
    end
  end
end
