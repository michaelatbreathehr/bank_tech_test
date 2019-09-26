
require 'date'

class Account

  MINIMUM_BALANCE = 0

  attr_reader :balance, :transaction_log


  def initialize
    @balance = 0
    @transaction_log = []
  end

  def deposit(deposit, date = DateTime.now)
    @balance += deposit
    @transaction_log << [
      date,
      deposit,
      '',
      balance]
  end

  def withdrawal(withdrawal, date = DateTime.now)
    raise 'Not allowed to go overdraw' if @balance - withdrawal < MINIMUM_BALANCE
    @balance -= withdrawal
    @transaction_log << [
      date,
      '',
      withdrawal,
      balance]
  end

end
