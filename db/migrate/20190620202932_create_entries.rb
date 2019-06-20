class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.references :member, null: false
      t.string :title, null: false
      t.text :body
      t.datetime :posted_at, null: false
      t.string :status, null: false, default: "draft"
      t.timestamps null: false
    end
  end
end
