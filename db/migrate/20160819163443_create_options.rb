class CreateOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :options do |t|
      t.string :name
      t.integer :score, default: 0
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
