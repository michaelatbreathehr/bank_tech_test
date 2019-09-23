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
		p subject.balance
		subject.withdraw(25)
		expect(subject.balance).to eq(25)
	end

end
