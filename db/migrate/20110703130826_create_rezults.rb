class CreateRezults < ActiveRecord::Migration
  def self.up
    create_table :rezults do |t|
      t.string :nazwa
      t.string :opis
      t.integer :p1_id
         
	  
      t.timestamps
    end
  end

  def self.down
    drop_table :rezults
  end
end
