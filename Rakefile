#!/usr/bin/env rake
require 'bundler/gem_tasks'
require 'rake/testtask'

desc 'Default: run tests'
task :default => :test

desc 'Test excerpt'
Rake::TestTask.new(:test) do |t|
  t.pattern = 'test/**/*_test.rb'
  t.libs = ['lib', 'test']
end
