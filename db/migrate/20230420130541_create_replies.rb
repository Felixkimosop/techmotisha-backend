class CreateReplies < ActiveRecord::Migration[7.0]
  def change
    create_table :replies do |t|
      t.text :reply
      t.references :comment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
