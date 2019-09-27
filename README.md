# Requirements

You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

# Acceptance criteria
GIVEN a client makes a deposit of 1000 on 10-01-2012
AND a deposit of 2000 on 13-01-2012
AND a withdrawal of 500 on 14-01-2012
WHEN she prints her bank statement
THEN she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00


# User Stories

Minumum Requirements
--------------------

When I view my account balance
As a new client
It displays an opening balance of 0

When I deposit 500 into my account
As an existing client with 0 balance
It displays a new balance of 500

when I withdraw 250 from account
As an existing client with a balance of 500
It displays a new balance of 250

When I deposit 1000 into my account
As an existing client with a balance of 250
It displays a new balance of 1250

Edge Case scenarios
---------------------

when I withdraw 250 from account
As an existing client with a balance of 200
It displays a message "insufficient funds to complete this request"

When I withdraw 1 from my account
As a new client with a balance of 0
It displays a message "insufficient funds to complete this request"

# My approach

My plan to resolving this is to create a 3 classes using a TDD approach.  The 3
classes will be Account, Transaction_log and Statement.  Choosing Ruby as the
language as it was my preference at the time.

I started by being able to make a deposit and withdrawal on the account which
could be saved in the transaction log.  Over time I would then moved the
transaction log out to its own class along with Statement which would be used
to display all transactions.

Account - Will control deposits and renewals and send each transaction to the
transaction log

Transaction_log - Will save each transaction and control the balance on the
Account

Statement - Will provide the user with a statement to view when they request it.

# Steps to create

clone repo https://github.com/michaelatbreathehr/bank_tech_test
run bundle install
to run tests - run rspec
to view test coverage open coverage/index.html after running rspec
to run linter - run Rubocop

to run through the process
open IRB
require './lib/account'
require "awesome_print"
* create new account
account = Account.new
* create a deposit
account.deposit(50)
* create a withdrawal
account.withdrawl(25)
* to view transaction log
account.transaction_log
* to print a statement
account.print_statement
