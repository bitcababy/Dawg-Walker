class CreateDawgs < ActiveRecord::Migration
  def change
    create_table :dawgs do |t|
      t.string 		:name
      t.integer 	:root_id

      t.timestamps
    end
  end
end
