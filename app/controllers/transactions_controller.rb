class TransactionsController < ApplicationController
	def create
		@account = Account.find(params[:account_id])
		transaction = @account.transactions.create(transaction_params)
		@account.modify_balance_for_transaction(transaction.transaction_type, transaction.amount)
		redirect_to account_path(@account)
	end

	private
	def transaction_params
		params.require(:transaction).permit(:amount, :transaction_type)
	end
end
