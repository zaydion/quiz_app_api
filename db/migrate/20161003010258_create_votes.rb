class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :value, default: 1
      t.references :option, foreign_key: true

      t.timestamps
    end
  end
end
