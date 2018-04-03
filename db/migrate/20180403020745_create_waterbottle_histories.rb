class CreateWaterbottleHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :waterbottle_histories do |t|
    	t. integer :waterbottle_id
    	t.integer :refills
      t.timestamps
    end
  end
end
