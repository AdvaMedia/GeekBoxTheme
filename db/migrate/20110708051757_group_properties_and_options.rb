class GroupPropertiesAndOptions < ActiveRecord::Migration
  def self.up
    create_table :option_groups, :force => true do |t|
      t.string :name, :default => "", :null => false #for_admin
      t.integer :position #position for acts_as_list
      t.string :title, :default => "", :null => false #display as
      t.boolean :show, :default=>true #show this group or no?
      t.timestamps
    end
    
    add_column :properties, :option_group_id, :integer
    add_column :option_types, :option_group_id, :integer
  end

  def self.down
    remove_column :option_types, :option_group_id
    remove_column :properties, :option_group_id
    drop_table :options_groups
  end
end