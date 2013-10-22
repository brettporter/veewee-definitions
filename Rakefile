require 'bundler'

task :build, :box do |task, args|
  args.with_defaults(:box => "CentOS-6.4-x86_64-minimal")
  sh "veewee vbox list"
  sh "veewee vbox build --force --auto --nogui #{args[:box]}"
  sh "veewee vbox validate #{args[:box]}"
  sh "veewee vbox export #{args[:box]}"
end

task :default => :build
