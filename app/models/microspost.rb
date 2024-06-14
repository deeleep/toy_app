# class Microspost < ApplicationRecord
#     validates :content , length : { maximum : 140 } 

# end

class Microspost < ApplicationRecord
    belongs_to :user
    validates :content, length: { maximum: 5 }, presence: true
  end
  