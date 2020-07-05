# frozen_string_literal: true

require 'storm_trooper/helper/root'

module StormTrooper
  module Fragment
    class Root < Base
      include StormTrooper::Helper::MainHelper

      method_option :branch, type: :string, desc: 'Branch', required: false, default: 'master'
      desc 'add https://github.com/foo/bar-module', 'Add Fragment for StormTrooper'
      def add(path)
        say 'Fragment add - git submodule'
        @branch = options[:branch]
        @giturl = path
        @fragment_name = path.gsub(/(.*:|.git)/, '').split('/').last
        @fragment_path = "fragments/#{@fragment_name}"

        run! "git submodule add #{@giturl} #{@fragment_path}"
        # run! "git --git-dir #{path} checkout #{@branch}"
        unless @branch.to_s.empty?
          Dir.chdir(@fragment_path) do
            run! "git checkout #{@branch}"
          end
          run! "git add #{@fragment_path}"
        end
        # run! "git submodule init #{path}"
        run! "git submodule update --init #{@fragment_path}"
      end

      method_option :force, type: :string, desc: 'Forced', aliases: '--f', required: false
      method_option :branch, type: :string, desc: 'Branch', aliases: '-b', required: false
      desc 'update <submodule>', 'Update Fragment for StormTrooper'
      def update(path)
        say 'Fragment update - reset and update'
        @fragment_name = path
        @fragment_path = "fragments/#{@fragment_name}"
        Dir.chdir(@fragment_path) do
          run! 'git fetch'
          unless options[:force].to_s.empty?
            if options[:branch].to_s.empty?
              run! 'git reset --hard HEAD'
            else
              run! "git reset --hard origin/#{options[:branch]}"
            end
          end
        end
      end

      desc 'remove <fragment_name>', 'Remove Fragment for StormTrooper'
      def remove(path)
        say 'Fragment remove - remove from project'
        @fragment_name = path
        @fragment_path = "fragments/#{@fragment_name}"

        run! "git submodule deinit -f -- #{@fragment_path}"
        run! "rm -rf .git/modules/#{@fragment_path}"
        run! "git rm -f #{@fragment_path}"
        run! "rm -rf #{@fragment_path}"
      end

    end
  end
end
