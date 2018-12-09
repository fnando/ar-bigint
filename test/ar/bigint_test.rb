require "test_helper"

class BigIntTest < Minitest::Test
  let(:model) { Class.new(ActiveRecord::Base) { self.table_name = "things" } }

  test "create integer as bigints" do
    with_migration do
      drop_table(:things) if table_exists?(:things)
      create_table(:things) do |t|
        t.integer :age
        t.integer :quantity, limit: 4
        t.bigint :big_number
      end
    end

    columns = model.columns.select {|col| col.type == :integer }

    assert columns.all? {|col| col.sql_type == "bigint" }
    assert columns.all? {|col| col.limit == 8 }
  end
end
