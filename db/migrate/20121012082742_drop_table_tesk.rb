class DropTableTesk < ActiveRecord::Migration
  def up
  	drop_table :tesks
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
