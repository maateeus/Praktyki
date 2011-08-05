class CreatePrezults < ActiveRecord::Migration
  def self.up
    create_table :prezults do |t|
      t.string :nazwa
      t.string :opis
      t.integer :problem_id

      t.timestamps
    end
  end

  def self.down
    drop_table :prezults
  end
end
