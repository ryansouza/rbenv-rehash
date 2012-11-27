# Borrowed from http://github.com/cldwalker/gem_grep

require 'rake'
require 'fileutils'

def gemspec
  @gemspec ||= eval(File.read('rbenv-rehash.gemspec'), binding, 'rbenv-rehash.gemspec')
end

desc "Build the gem"
task :gem=>:gemspec do
  sh "gem build rbenv-rehash.gemspec"
  FileUtils.mkdir_p 'pkg'
  FileUtils.mv "#{gemspec.name}-#{gemspec.version}.gem", 'pkg'
end

desc "Install the gem locally"
task :install => :gem do
  sh %{gem install pkg/#{gemspec.name}-#{gemspec.version}}
end

desc "Generate the gemspec"
task :generate do
  puts gemspec.to_ruby
end

desc "Validate the gemspec"
task :gemspec do
  gemspec.validate
end

task :default => :gemspec
