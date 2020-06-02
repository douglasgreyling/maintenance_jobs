class ValidJob < MaintenanceJob
  def perform
    'performed'
  end

  def self.version
    'version_number'
  end
end