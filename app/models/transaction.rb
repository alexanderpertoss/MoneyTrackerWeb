class Transaction < ApplicationRecord
  belongs_to :account

  def show_amount
    account.currency + " " + amount.to_s
  end

  def show_transaction_type
    case transaction_type
    when 0
      "Income"
    when 1
      "Outcome"
    else
      "Not defined"
    end
  end
end
