class Account < ApplicationRecord
	has_many :transactions

	def show_balance
		currency + " " + balance.to_s
	end

	def modify_balance_for_transaction transaction_type, transaction_amount
		# Transaction types: 0 -> Income, 1 -> Outcome
		case transaction_type
		when 0
			add_to_balance(transaction_amount)
		when 1
			substract_from_balance(transaction_amount)
		end
		self.save
	end

	private
	def substract_from_balance substract_amount
		self.balance = self.balance - substract_amount
	end

	def add_to_balance add_balance
		self.balance = self.balance + add_balance
	end
end
