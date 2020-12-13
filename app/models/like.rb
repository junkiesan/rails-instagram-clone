class Like < ApplicationRecord
  belongs_to :post, :account
  validates_uniqueness_of :post_id, scope: :account_id
end