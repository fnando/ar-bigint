# frozen_string_literal: true

require "active_record"
require "active_record/connection_adapters/postgresql_adapter"

ActiveRecord::ConnectionAdapters::PostgreSQLAdapter::NATIVE_DATABASE_TYPES[:integer][:limit] = 8

ActiveRecord::Type.class_eval do
  extension = Module.new do
    def column(name, type, **options)
      type = :bigint if type == :integer
      super(name, type, **options)
    end
  end

  ActiveRecord::ConnectionAdapters::TableDefinition.prepend(extension)
end
