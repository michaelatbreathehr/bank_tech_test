
require 'date'

class Account

  MINIMUM_BALANCE = 0

  attr_reader :balance, :transaction_log


  def initialize
    @balance = 0
    @transaction_log = []
  end

  def deposit(deposit, _date = DateTime.now)
    @balance += deposit
    @transaction_log << [
      _date.to_s,
      deposit,
      '',
      balance]
  end

  def withdrawal(withdrawal, _date = DateTime.now)
    raise 'Not allowed to go overdraw' if @balance - withdrawal < MINIMUM_BALANCE
    @balance -= withdrawal
    @transaction_log << [
      _date.to_s,
      '',
      withdrawal,
      balance]
  end

  def print_statement
    1
  end

end
