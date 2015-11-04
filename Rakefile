require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec
desc "Ejecucion de pruebas"
task :spec do
    sh "bundle exec rspec spec/migema_spec.rb"
    
end

