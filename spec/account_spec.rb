require 'account'

describe Account do
  it 'Has a balance of 0 on creation' do
    expect(subject.balance).to eq(0)
  end

  it 'Has new balance after deposit' do
    subject.deposit(50, DateTime.now)
    expect(subject.balance).to eq(50)
  end

  it 'Has new balance after withdraw' do
    subject.deposit(50, DateTime.now)
    subject.withdrawal(25, DateTime.now)
    expect(subject.balance).to eq(25)
  end

  it 'Raises minimum balance error' do
    minimum_balance = Account::MINIMUM_BALANCE
    subject.deposit(10, DateTime.now)
    expect { subject.withdrawal 20, DateTime.now }.to raise_error 'Not allowed to go overdraw'
  end

  it 'has an empty list of transactions on account creation' do
    expect(subject.transaction_log).to be_empty
  end

  it 'stores a transaction' do
    subject.deposit(50)
    expect(subject.transaction_log.count).to eq(1)
  end

  it 'prints a statement' do
    expect(subject.print_statement).to eq(1)
  end
end
