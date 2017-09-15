class AddProjectIdToTargets < ActiveRecord::Migration[5.1]
  def change
    add_reference :targets, :project
  end
end
