# require "rake/testtask"

# Rake::TestTask.new(:test => "db:migrate") do |t|
#   t.libs << "./test"
#   t.pattern = "test/**/*_test.rb"
# end

# task :default => :test

Rails::TestTask.new("test:features" => "test:prepare") do |t|
  t.pattern = "test/features/**/*_test.rb"
end

Rake::Task["test:run"].enhance ["test:features"]
