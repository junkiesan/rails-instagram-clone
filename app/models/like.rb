class Like < ApplicationRecord
  belongs_to :post, :account
end