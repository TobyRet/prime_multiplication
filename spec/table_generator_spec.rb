require './lib/table_generator.rb'

describe TableGenerator do
  before(:each) do
    numbers = [2, 3, 5]
    @table_generator = TableGenerator.new(numbers)
  end

  it 'generates a header' do
    expected_header = ['', 2, 3, 5]

    expect(@table_generator.header).to eq(expected_header)
  end

  it 'generates rows' do
    expected_rows = [
      [2, 4, 6, 10],
      [3, 6, 9, 15],
      [5, 10, 15, 25]
    ]

    expect(@table_generator.rows).to eq(expected_rows)
  end
end
