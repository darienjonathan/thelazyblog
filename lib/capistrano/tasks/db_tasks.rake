namespace :db do
  %w[create migrate seed].each do |command|
    desc "rake db:#{command}"
    task command do
      on roles(:app) do
        within "#{current_path}" do
          with rails_env: "#{fetch(:stage)}" do
            execute :rake, "db:#{command}"
          end
        end
      end
    end
  end
  desc "rake db:drop"
  task :drop do
    on roles(:app) do
      within "#{current_path}" do
        with rails_env: "#{fetch(:stage)}" do
          execute :rake, "db:drop DISABLE_DATABASE_ENVIRONMENT_CHECK=1"
        end
      end
    end
  end
end
