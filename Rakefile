
task default: :test

desc 'Run linter and tests'
task :test do
  Rake::Task[:lint].invoke
  Rake::Task[:spec].invoke
end

# Testing tasks
begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec) do |t|
    t.verbose = false
  end
rescue LoadError
  # no rspec available
end

# Linting tasks
begin
  require 'rubocop/rake_task'

  RuboCop::RakeTask.new(:lint)
rescue LoadError
  # rubocop not available
end
