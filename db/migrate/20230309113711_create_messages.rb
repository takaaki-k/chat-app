class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.reference :user, null: false, foreign_key: true
      t.reference :name, null: false, foreign_key: true
      t.timestamps
    end
  end
end
