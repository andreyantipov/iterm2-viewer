require 'rake/testtask'

Rake::TestTask.new do |t|
    t.libs << 'test'
    # t.warning = true
    #t.verbose = true
    t.pattern = "test/**/test_*.rb"
end
task :default => [:test]
