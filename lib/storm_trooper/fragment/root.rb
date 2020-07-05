# frozen_string_literal: true

module StormTrooper
  module Fragment
    class Root < Base

      method_option :env, type: :string, desc: 'Environment', required: true, default: ENV['STROOP_ENV']
      method_option :version, type: :string, desc: 'Version', aliases: '-v', required: false
      desc 'fragment https://github.com/foo/bar-module module1', 'Add Fragment for StormTrooper'
      def add(uri, path)
        say 'Fragment add - git submodule'
        run! "git submodule add #{uri} #{path}"
        run! 'git submodule init'
        run! 'git submodule update'

      end

      desc 'git submodule add https://github.com/foo/bar-module', 'Add Fragment for StormTrooper'
      def update(path)
        say 'Fragment update - reset and update'
      end

      desc 'git submodule add https://github.com/foo/bar-module', 'Add Fragment for StormTrooper'
      def modify
        say 'Fragment modify - This is not yet supported. Do it manually.', :yellow
      end

      desc 'git submodule deinit ', 'Add Fragment for StormTrooper'
      def remove(path)
        say 'Fragment remove - remove from project'
        run! "git submodule deinit -f -- a/#{path}"
        run! "rm -rf .git/modules/a/#{path}"
        run! "git rm -f a/#{path}"
      end

    end
  end
end
