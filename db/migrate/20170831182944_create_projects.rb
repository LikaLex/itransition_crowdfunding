class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.text :description
      t.text :title
      t.datetime :funding_deadline
      t.references :user
      t.timestamps
    end
  end
end
