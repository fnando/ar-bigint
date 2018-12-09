require "simplecov"
SimpleCov.start

require "bundler/setup"
require "ar/bigint"
require "minitest/utils"
require "minitest/autorun"

ActiveRecord::Base.establish_connection "postgres:///test"
ActiveRecord::Migration.verbose = false

def with_migration(&block)
  Class.new(ActiveRecord::Migration[5.2], &block).new
end
