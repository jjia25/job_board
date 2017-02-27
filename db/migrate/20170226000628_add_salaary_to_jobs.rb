class AddSalaaryToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :salary, :decimal
  end
end
