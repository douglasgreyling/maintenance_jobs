require 'test_helper'

# errors
require 'maintenance_jobs/version_missing_error'

# jobs
require 'maintenance_job'
require 'valid_job'

class MaintenanceJobs::Test < ActiveSupport::TestCase
  describe 'maintenance jobs' do
    describe '#perform' do
      it 'raises a not implemented error when the method is not defined' do
        assert_raises(NotImplementedError) { MaintenanceJob.new.perform }
      end

      it 'returns the defined code when the method is defined' do
        assert_equal ValidJob.new.perform, 'performed'
      end
    end

    describe '#version' do
      it 'raises a version missing error when the method is not defined' do
        assert_raises(MaintenanceJobs::VersionMissingError) { MaintenanceJob.version }
      end

      it 'returns the version when the method is defined' do
        assert_equal ValidJob.version, 'version_number'
      end
    end
  end
end
