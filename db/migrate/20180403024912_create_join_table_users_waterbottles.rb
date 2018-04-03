class CreateJoinTableUsersWaterbottles < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :waterbottles do |t|
       t.index [:user_id, :waterbottle_id]
       t.index [:waterbottle_id, :user_id]
    end
  end
end
