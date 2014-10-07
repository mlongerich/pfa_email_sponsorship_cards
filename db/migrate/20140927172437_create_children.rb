class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.integer :age
      t.string :grade
      t.string :tribe
      t.string :about
      t.string :picture
      t.boolean :full
      t.string :fullcode
      t.boolean :living
      t.string :livingcode
      t.boolean :schooling
      t.string :schoolingcode

      t.timestamps
    end
  end
end
