require './lib/account'
account = Account.new
account.deposit(50)
account.withdraw(50)
account.withdraw(1)

require './lib/transaction'
transaction = Transaction.new
transaction.log_deposit(50)
transaction.log_withdrawal(50)
transaction
