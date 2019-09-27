# frozen_string_literal: true

require 'date'

class Account
  MINIMUM_BALANCE = 0.00

  attr_reader :balance, :transaction_log

  def initialize
    @balance = 0.00
    @transaction_log = []
  end

  def deposit(deposit, _date = DateTime.now)
    @balance += deposit
    @transaction_log << [
      _date.to_s,
      deposit.to_i,
      '',
      balance.to_i
    ]
  end

  def withdrawal(withdrawal, _date = DateTime.now)
    raise 'insufficient funds' if @balance - withdrawal < MINIMUM_BALANCE

    @balance -= withdrawal
    @transaction_log << [
      _date.to_s,
      '',
      withdrawal.to_i,
      balance.to_i
    ]
  end

  def print_statement
    1
  end
end
