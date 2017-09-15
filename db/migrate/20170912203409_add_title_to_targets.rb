class AddTitleToTargets < ActiveRecord::Migration[5.1]
  def change
    add_column :targets, :title, :string
  end
end
