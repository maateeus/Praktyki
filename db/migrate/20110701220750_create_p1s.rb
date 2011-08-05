class CreateP1s < ActiveRecord::Migration
  def self.up
    create_table :p1s do |t|
      t.string :nazwa
      t.string :opis
      t.string :image

      t.timestamps
    end
  end

  def self.down
    drop_table :p1s
  end
end
