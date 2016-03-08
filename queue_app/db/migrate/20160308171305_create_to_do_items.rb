class CreateToDoItems < ActiveRecord::Migration
  def change
    create_table :to_do_items do |t|
      t.text :item
      t.string :list_id

      t.timestamps null: false
    end
  end
end
