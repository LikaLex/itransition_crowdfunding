class CreateTargets < ActiveRecord::Migration[5.1]
  def change
    create_table :targets do |t|
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
