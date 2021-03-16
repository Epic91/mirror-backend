class CreateHighlights < ActiveRecord::Migration[6.1]
  def change
    create_table :highlights do |t|
      t.integer :date
      t.text :body

      t.timestamps
    end
  end
end
