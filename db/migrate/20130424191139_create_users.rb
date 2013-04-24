class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.references :votes

      t.timestamps
    end
    add_index :users, :votes_id
  end
end
