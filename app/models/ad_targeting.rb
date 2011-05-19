class AdTargeting < ActiveRecord::Base
  scope :date_between, lambda { |date| where('start_date <= ? and end_date >= ?', date, date) }
end
