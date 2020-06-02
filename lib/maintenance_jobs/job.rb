module MaintenanceJobs
  module Job
    extend ActiveSupport::Concern

    included do
      before_enqueue { self.class.record_run }
    end

    def perform
      raise NotImplementedError
    end

    class_methods do
      def version
        raise VersionMissingError
      end

      def record_run
        MaintenanceRun.where(version: version).first_or_create!
      end

      def runnable?
        !MaintenanceRun.where(version: version).exists?
      end
    end
  end
end