class Protocol < ApplicationRecord
	has_many :scans
	has_many :cases, :through => :scans

	enum weight: [:T1, :T2]
end
