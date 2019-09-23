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

# Edge Case scenarios
---------------------

when I withdraw 250 from account
As an existing client with a balance of 200
It displays a message "insufficient funds to complete this request"

when I withdraw 1 from account
As a new client with a balance of 0
It displays a message "insufficient funds to complete this request"