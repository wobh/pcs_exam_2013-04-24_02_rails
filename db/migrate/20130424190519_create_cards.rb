class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :color
      t.string :family
      t.integer :number

      t.timestamps
    end
  end
end
