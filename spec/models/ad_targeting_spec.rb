require 'spec_helper'

describe AdTargeting do  
  describe "date_between scope" do
    it "returns only a the :valid_ad_with_date_range_for_today" do
      Factory.create(:invalid_ad_for_today)
      Factory.create(:valid_ad_with_date_range_for_today)
      AdTargeting.date_between(DateTime.current).should have(1).things
    end
  end
end
