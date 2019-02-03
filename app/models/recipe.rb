class Recipe < ApplicationRecord
  belongs_to :user
  has_many :compounds

  def self.pending user
    pending = find_by(user: user, finished: false)
    pending.nil? ? false : pending
  end
end
