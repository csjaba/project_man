class CreateTesks < ActiveRecord::Migration
  def change
    create_table :tesks do |t|
      t.string :title
      t.text :description
      t.datetime :completion_date
      t.references :post

      t.timestamps
    end
    add_index :tesks, :post_id
  end
end