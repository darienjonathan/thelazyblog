# Runs rake assets:clean
# Defaults to nil (no asset cleanup is performed)
# If you use Rails 4+ and you'd like to clean up old assets after each deploy,
# set this to the number of versions to keep
set :keep_assets, 2

set :user,            'darienjonathan'
set :pem_file,        %w(/Users/darien-winata/.ssh/self-journal.pem)

# Clear existing task so we can replace it rather than "add" to it.
Rake::Task["deploy:compile_assets"].clear

namespace :deploy do
  desc 'Compile assets'
  task :compile_assets => [:set_rails_env] do
    # invoke 'deploy:assets:precompile'
    invoke 'deploy:assets:copy_manifest'
    invoke 'deploy:assets:precompile_local'
    invoke 'deploy:assets:backup_manifest'
  end

  namespace :assets do
    local_dir = "./public/assets/"

    # Download the asset manifest file so a new one isn't generated. This makes
    # the app use the latest assets and gives Sprockets a complete manifest so
    # it knows which files to delete when it cleans up.
    desc 'Copy assets manifest'
    task copy_manifest: [:set_rails_env] do
      on roles(fetch(:assets_roles, [:web])) do
        remote_dir = "#{fetch(:user)}@#{host.hostname}:#{shared_path}/public/assets/"

        run_locally do
          begin
            execute "mkdir -p #{local_dir}"
            execute "scp -i #{fetch(:pem_file).first} '#{remote_dir}.sprockets-manifest-*' #{local_dir}"
          rescue
            # no manifest yet
          end
        end
      end
    end

    desc "Precompile assets locally and then rsync to web servers"
    task :precompile_local do
      # compile assets locally
      run_locally do
        Bundler.with_clean_env do
          execute "RAILS_ENV=#{fetch(:stage)} bundle exec rake assets:precompile"
        end
      end

      # rsync to each server
      on roles(fetch(:assets_roles, [:web])) do
        # this needs to be done outside run_locally in order for host to exist
        remote_dir = "#{fetch(:user)}@#{host.hostname}:#{shared_path}/public/assets/"

        run_locally do
          # if you are using pem file to login on EC2 server instead of ssh
          execute "rsync -av --progress -e 'ssh -i #{fetch(:pem_file).first}' #{local_dir} #{remote_dir}"
        end
      end

      # clean up
      # run_locally { execute "rm -rf #{local_dir}" }
    end
  end
end