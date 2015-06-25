class Media < ActiveRecord::Base
  has_many :landings
  belongs_to :owner, :class_name => "User"
end
