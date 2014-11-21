require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = 'test/**/test_*.rb'
end

desc 'Guard'
task :guard do
  exec('bundle exec guard')
end

task default: [:test]
