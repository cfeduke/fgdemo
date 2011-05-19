class CreateAdTargetings < ActiveRecord::Migration
  def self.up
    create_table :ad_targetings do |t|
      t.integer :ad_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :ad_targetings
  end
end
