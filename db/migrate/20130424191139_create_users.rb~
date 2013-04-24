class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.references :votes
      t.references :profiles

      t.timestamps
    end
    add_index :users, :votes_id
    add_index :users, :profiles_id
  end
end
