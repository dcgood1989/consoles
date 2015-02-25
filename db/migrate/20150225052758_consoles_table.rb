class ConsolesTable < ActiveRecord::Migration
  def change
    create_table :consoles do |t|
      t.string :developer
      t.integer :release_year
      t.string :description


      t.timestamps
    end
  end
end
