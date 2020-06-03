require 'test_helper'
require 'maintenance_jobs/version_missing_error'

class MaintenanceJobs::Test < ActiveSupport::TestCase
  describe 'MaintenanceJob' do
    describe '.perform' do
      it 'raises a not implemented error' do
        assert_raises(NotImplementedError) { MaintenanceJob.perform }
      end
    end

    describe '.version' do
      it 'raises a not implemented error' do
        assert_raises(MaintenanceJobs::VersionMissingError) { MaintenanceJob.version }
      end
    end
  end
end
