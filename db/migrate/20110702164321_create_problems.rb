class CreateProblems < ActiveRecord::Migration
  def self.up
    create_table :problems do |t|
      t.string :nazwa
      t.string :opis
      t.integer :p1_id

      t.timestamps
    end
    add_index :problems, :p1_id
    add_index :problems, :created_at
  end

  def self.down
    drop_table :problems
  end
end
