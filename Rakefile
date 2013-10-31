$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Ejecutar las espectativas de la clase Fraccion. (Por defecto)."
task :spec do
  sh "rspec -I. spec/Fraccion_spec.rb"
end

desc "Ejecutar con documentacion."
task :doc do
  sh "rspec -I. spec/Fraccion_spec.rb --format documentation"
end

desc "Ejecutar con html."
task :html do
  sh "rspec -I. spec/Fraccion_spec.rb --format html"
end

