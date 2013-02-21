# encoding: utf-8 
class CreateConfigs < ActiveRecord::Migration
  def change
    create_table :configs do |t| 
      t.string :value_name 
      t.text :value 
      t.integer :config_type_id 
      t.timestamps 
    end
    add_index(:configs, [:config_type_id], :name => 'configs_fk_config_config_type1_idx') 
  end
end

