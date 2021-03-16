class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :subject
      t.integer :date
      t.string :prompt
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end
end
