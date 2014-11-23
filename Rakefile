require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'lib'
  t.libs << 'spec'
  t.pattern = 'spec/**/*_spec.rb'
  t.verbose = true
end

desc 'Guard'
task :guard do
  exec('bundle exec guard')
end

task default: [:test]
