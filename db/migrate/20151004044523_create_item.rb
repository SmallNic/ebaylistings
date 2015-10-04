class CreateItem < ActiveRecord::Migration
  def up
  	create_table :items do |t|
  		t.string :name
      t.string :title
      t.string :author
      t.string :isbn
      t.string :condition
      t.string :specifics
      t.string :edition
      t.integer :year
      t.string :cover
      t.decimal :weight
      t.decimal :env
      t.decimal :paper
      t.decimal :total
    end
  end

  def down
  	drop_table :items
  end
end
