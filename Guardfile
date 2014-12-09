# -*- coding: utf-8 -*-
# A sample Guardfile
# More info at https://github.com/guard/guard#readme

## Uncomment and set this to only include directories you want to watch
# directories %(app lib config test spec feature)

## Uncomment to clear the screen before every task
# clearing :on
guard :rspec , cmd:'rspec' do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
end

guard :rubocop, all_on_start: false, cli: ['--format', 'clang', '--rails'] do
  watch(%r{.+\.rb$})
  watch(%r{.+\.rake$}) # .rakeファイルも監視対象にする
  watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
end
