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
        puts 'jiowfjowejiofw============'
        puts @branch
        puts @branch.to_s
        unless @branch.to_s.empty?
          puts '============unless '
          Dir.chdir(@fragment_path) do
            puts '====================chdir'
            run! "git checkout #{@branch}"
          end
          run! "git add #{@fragment_path}"
        end
        # run! "git submodule init #{path}"
        run! "git submodule update --init #{@fragment_path}"
      end

      method_option :path, type: :string, desc: 'Path for submodule', aliases: '-p', required: false
      method_option :force, type: :string, desc: 'Forced', aliases: '--f', required: false
      desc 'update <submodule>', 'Add Fragment for StormTrooper'
      def update(path, force)
        say 'Fragment update - reset and update'
        if path
          run! "git --git-dir #{path} git fetch"
          if force
            run! 'git submodule foreach git reset --hard'
          end
        elsif
          run! 'git submodule foreach git fetch'
          if force
            run! 'git submodule foreach git reset --hard origin/master'
          end
        end
      end

      desc 'modify <submodule>', 'Add Fragment for StormTrooper'
      def modify(path, message)
        say 'Fragment modify - This is not yet supported. Do it manually.', :yellow
        if path
          run! "git submodule path git commit -m '#{message}'"
        elsif
          run! "git submodule foreach git commit -m '#{message}'"
        end
      end

      desc 'remove <submodule>', 'Add Fragment for StormTrooper'
      def remove(path)
        say 'Fragment remove - remove from project'
        run! "git submodule deinit -f -- a/#{path}"
        run! "rm -rf .git/modules/a/#{path}"
        run! "git rm -f a/#{path}"
      end

    end
  end
end
