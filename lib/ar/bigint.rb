require "active_record"
require "active_record/connection_adapters/postgresql_adapter"

ActiveRecord::ConnectionAdapters::PostgreSQLAdapter::NATIVE_DATABASE_TYPES[:integer] = {name: "integer", limit: 8}

ActiveRecord::ConnectionAdapters::ColumnMethods.class_eval do
  alias_method :integer, :bigint
end
