# frozen_string_literal: true

require 'spec_helper'
require 'account'

describe Account do
  describe '#deposit' do
    it 'Allows a client to make a deposit into their account' do
      account = Account.new
      account.deposit(20)
      expect(account.balance).to eq(20)
    end
  end
end
