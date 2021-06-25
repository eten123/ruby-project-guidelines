require 'bundler'
Bundler.require


require_all 'lib'


ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.logger = nil