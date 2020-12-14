class Like < ApplicationRecord
  belongs_to :post, :account
  validates_uniqueness_of :post_id, scope: :account_id

  after_create :update_post_like_counter

  private 

  def update_post_like_counter
    Post.find(self.post_id).increment(:counter)
  end
end