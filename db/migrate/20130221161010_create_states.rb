# encoding: utf-8 
class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t| 
      t.string :name, :null => false  
      t.string :slug, :null => false  
      t.integer :country_id 
      t.timestamps 
    end
    add_index(:states, [:country_id], :name => 'states_fk_state_country1_idx') 
  end
end

