ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

task :console do 
  Pry.start 
end 

task :migrations do 
  system "rake db:migrate && db:migrate RACK_ENV=test" 
end 

# Type `rake -T` on your command line to see the available rake tasks.