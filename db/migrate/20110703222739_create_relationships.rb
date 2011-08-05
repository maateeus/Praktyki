class CreateRelationships < ActiveRecord::Migration
  def self.up
    create_table :relationships do |t|
      t.integer :subproblem_id
      t.integer :problem_id
 t.string :nazwa
      t.string :opis
      t.timestamps
    end
    add_index :relationships, :subproblem_id
    add_index :relationships, :problem_id
    add_index :relationships, [:subproblem_id, :problem_id], :unique
    
    
  end

  def self.down
    drop_table :relationships
  end
end
