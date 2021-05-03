class RenameTitleColumnToTasks < ActiveRecord::Migration[5.2]
  def change
    rename_colum :tasks, :title, :status
  end
end
