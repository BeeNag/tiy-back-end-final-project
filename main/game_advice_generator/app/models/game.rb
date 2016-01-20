class Game < ActiveRecord::Base
  belongs_to :platform
  has_many :tips, dependent: :destroy
end
