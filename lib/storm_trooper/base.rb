# frozen_string_literal: true

# Base class including all Thor-related configuration
module StormTrooper
  # 또르 베이스
  class Base < Thor
    include Thor::Actions

    def self.exit_on_failure?
      true
    end

  end
end
