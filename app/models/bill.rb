class Bill < ActiveRecord::Base
  validates :event, :date, :location, :total_amount, :presence => true
end
