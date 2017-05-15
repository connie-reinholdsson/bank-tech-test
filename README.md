# Welcome to the Bank Tech Test!

Text

### Technologies:
- Ruby (version 2.4.0)
- RSpec (version 3.6)

### Key features:
- User can interact with the code through IRB/PRY
- User can make make a deposit (credit)
- User can make a withdrawal (debit)
- User can see a balance
- User can print an account statement (date, amount, balance)

### Deployment instructions:
1. Navigate to your projects directory
2. Run ```git clone https://github.com/connie-reinholdsson/bank-tech-test.git```
3. Run ```cd bank-tech-test```
4. Open IRB/PRY
5. Require the document
6. Run it

## Specification

### Requirements

You should be able to interact with the your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
