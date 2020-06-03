class CreateMaintenanceRuns < ActiveRecord::Migration[6.0]
  def change
    create_table :maintenance_runs do |t|
      t.string :version

      t.timestamps
    end
  end
end
