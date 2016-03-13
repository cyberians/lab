class Insurer < ActiveRecord::Base
	has_many :contracts, dependent: :destroy
end
