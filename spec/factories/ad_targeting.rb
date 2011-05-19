Factory.define :empty_ad, :class => AdTargeting do |a|
  a.ad_id        0
  a.start_date   DateTime.current.beginning_of_day
  a.end_date     DateTime.current.end_of_day
  # other attribute defaults ...
end

Factory.define :invalid_ad_for_today, :parent => :empty_ad do |a|
  a.ad_id        2
  a.start_date   DateTime.current.beginning_of_day - 2
  a.end_date     DateTime.current.end_of_day - 2
end

Factory.define :valid_ad_with_date_range_for_today, :parent => :empty_ad do |a|
  a.ad_id        3
  a.start_date   DateTime.current.beginning_of_day - 2
  a.end_date     DateTime.current.end_of_day + 2
end