require 'account'

describe Account do
	it 'Has a balance of 0 on creation' do
		expect(subject.balance).to eq(0)
	end

	it "Has new balance after deposit" do
		subject.deposit(50)
		expect(subject.balance).to eq(50)
	end

	it "Has new balance after withdraw" do
		subject.deposit(50)
		subject.withdraw(25)
		expect(subject.balance).to eq(25)
	end

	it "Raises minimum balance error" do
		minimum_balance = Account::MINIMUM_BALANCE
		subject.deposit(10)
		expect{ subject.withdraw 20 }.to raise_error 'Not allowed to go overdraw'
	end
end
