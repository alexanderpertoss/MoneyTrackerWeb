class Account < ApplicationRecord
	def show_balance
		currency + " " + balance.to_s
	end
end
