class Client < ActiveRecord::Base
	has_many :autos, dependent: :destroy

	has_many :contracts, dependent: :destroy
end
