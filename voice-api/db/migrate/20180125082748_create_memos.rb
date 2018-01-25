class CreateMemos < ActiveRecord::Migration[5.1]
  def change
    create_table :memos do |t|
      t.datetime :date
      t.string :title
      t.text :text_body

      t.timestamps
    end
  end
end
