class Case < ApplicationRecord

	has_many :scans
	has_many :protocols, :through => :scans

	enum hemi: [:left, :right, :whole]

	validates :caseid, presence: true
	validates :hemi, presence: true

end
