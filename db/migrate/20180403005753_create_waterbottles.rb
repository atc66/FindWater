class CreateWaterbottles < ActiveRecord::Migration[5.1]
  def change
    create_table :waterbottles do |t|
    	t.integer :volume
    	t.integer :user_id
      t.timestamps
    end
  end
end
