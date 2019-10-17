class Scan < ApplicationRecord
  belongs_to :case
  belongs_to :protocol
end
