class CreateChapters < ActiveRecord::Migration[7.0]
  def change
    create_table :chapters do |t|
      t.string :title
      t.text :content
      t.references :book
      t.timestamps
    end
  end
end
