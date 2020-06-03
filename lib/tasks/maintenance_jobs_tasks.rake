namespace :maintenance_jobs do
  desc "Installs maintenance jobs"
  task :install do
    `rails generate model MaintenanceRun version:string`
    sleep 1
    Rake::Task['db:migrate'].invoke
  end

  desc "Runs pending maintenance jobs"
  task :run do
    MaintenanceJob.run_pending_jobs
  end
end