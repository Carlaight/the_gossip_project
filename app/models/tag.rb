class Tag < ApplicationRecord
  belongs_to :user, optional: false # un seul user par tag
  has_many :join_table_tag_gossips
  has_many :gossips, :through => :join_table_tag_gossips
end
