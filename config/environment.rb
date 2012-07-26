# Load the rails application
require File.expand_path('../application', __FILE__)

# Load environment vars from local file
env = File.join(Rails.root, 'config', 'env.rb')
load(env) if File.exists?(env)

# Initialize the rails application
PhotoUpload::Application.initialize!
