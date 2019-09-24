class Account
	MINIMUM_BALANCE = 0
	attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
		@balance += amount
	end
	
	def withdraw(amount)
		fail 'Not allowed to go overdraw' if @balance - amount <MINIMUM_BALANCE
		@balance -= amount
	end

end
