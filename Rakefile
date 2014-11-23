require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = 'test/lib/**/test_*.rb'
  t.verbose = true
end

desc 'Guard'
task :guard do
  exec('bundle exec guard')
end

task default: [:test]
