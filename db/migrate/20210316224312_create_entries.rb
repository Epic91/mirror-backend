class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :subject
      t.string :emotion
      t.text :body
      t.string :topic
      t.text :highlight
      t.string :date
      t.integer :user_id
      t.integer :prompt_id

      t.timestamps
    end
  end
end
