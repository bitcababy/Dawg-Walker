class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
				t.string			:letter, :default => nil, :limit => 1
				t.integer			:child_id, :null => true
				t.integer			:sibling_id, :null => true
				t.boolean			:end_of_word, :default => false
      t.timestamps
    end
  end
end
