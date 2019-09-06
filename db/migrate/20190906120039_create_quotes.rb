class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :text, null: false
      t.boolean :approved, null: false, default: false
      t.uuid :uuid, default: "gen_random_uuid()", null: false

      t.timestamps
    end
  end
end
