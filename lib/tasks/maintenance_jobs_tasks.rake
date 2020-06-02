namespace :maintenance_jobs do
  desc "Installs maintenance jobs"
  task install: :environment do
    `rails generate migration CreateMaintenanceRuns version:string`
    sleep 1
    'rake db:migrate'
  end
end