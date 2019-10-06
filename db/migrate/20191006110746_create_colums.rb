class CreateColums < ActiveRecord::Migration[5.2]
  def change
    create_table :colums do |t|
      t.string :name
      t.string :title, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
