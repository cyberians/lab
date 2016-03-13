class Auto < ActiveRecord::Base
	belongs_to :client

	has_many :contracts, dependent: :destroy
end
