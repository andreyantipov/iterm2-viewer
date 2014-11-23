# A sample Guardfile
# More info at https://github.com/guard/guard#readme
guard :bundler do
  watch('Gemfile')
  watch(/^.+\.gemspec/)
end

guard :inch do
  watch(/.+\.rb/)
end

guard :reek do
  watch(%r{.+\.rb$})
end

guard :rubocop, cli: ['--format', 'simple'] do
  watch(%r{.+\.rb$})
  watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
end

guard :yard do
  watch(%r{bin/.+\.rb})
  watch(%r{lib/.+\.rb})
end

guard :minitest, all_after_pass: true do
#guard :minitest do
  # with Minitest::Unit
  watch(%r{^test/(.*)\/?test_(.*)\.rb$})
  watch(%r{^lib/(.*/)?([^/]+)\.rb$})     { |m| "test/#{m[1]}test_#{m[2]}.rb" }
  watch(%r{^test/test_helper\.rb$})      { 'test' }

  # with Minitest::Spec
  # watch(%r{^spec/(.*)_spec\.rb$})
  # watch(%r{^lib/(.+)\.rb$})         { |m| "spec/#{m[1]}_spec.rb" }
  # watch(%r{^spec/spec_helper\.rb$}) { 'spec' }
end
