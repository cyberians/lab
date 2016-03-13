class Contract < ActiveRecord::Base
  belongs_to :client
  belongs_to :insurance_type
  belongs_to :insurer
  belongs_to :auto
end
