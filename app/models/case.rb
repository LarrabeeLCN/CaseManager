class Case < ApplicationRecord
	enum hemi: [:left, :right, :whole]

	validates :caseid, presence: true
	validates :hemi, presence: true

end
