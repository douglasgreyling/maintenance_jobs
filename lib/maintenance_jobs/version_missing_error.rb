class MaintenanceJobs::VersionMissingError < StandardError
  def message
    'Expected version to be defined'
  end
end