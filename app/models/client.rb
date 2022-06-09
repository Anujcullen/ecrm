class Client < ApplicationRecord
  belongs_to :service

    STATUS = [
        ["Active", "1"],
        ["Deactive", "2"]
      ]

      
end
