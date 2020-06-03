module MaintenanceJobs
  class Railtie < ::Rails::Railtie
    rake_tasks do
      load 'tasks/maintenance_jobs_tasks.rake'
    end
  end
end
