module Minitest
  class StatisticsReporter < Reporter
    def skips
      # attr_accessor override
      results.length - @failures - @errors
    end
  end

  module Reportable
    def result_code
      # default -> { self.failure and self.failure.result_code or "." }
      (self.failure and self.failure.result_code) or (self.skipped? and 'S') or "."
    end

    def skipped?
      # default -> { self.failure and Skip === self.failure }
      (self.failure and Skip === self.failure) or (self.assertions.zero? and not self.error?)
    end

    def passed?
      # default -> { not self.failure }
      (not self.failure) and (not self.skipped?)
    end
  end
end
