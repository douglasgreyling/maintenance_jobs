require 'aspector'
require 'maintenance_jobs/version_missing_error'

class MaintenanceJob
  aspector do
    before :perform do
      self.class.record_run
    end
  end

  def self.perform
    raise NotImplementedError
  end

  def self.run_pending_jobs
    pending_jobs = descendants.select(&:runnable?)
    pending_jobs.each(&:perform)
  end

  def self.version
    raise MaintenanceJobs::VersionMissingError
  end

  def self.record_run
    MaintenanceRun.where(version: version).first_or_create!
  end

  def self.runnable?
    !MaintenanceRun.where(version: version).exists?
  end
end