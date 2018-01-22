class TableGenerator
  def initialize(numbers)
    @numbers = numbers
  end

  def header
    numbers.clone.unshift(nil)
  end

  def rows(operator)
    numbers.map do |number|
      create_row_from(number, operator)
    end
  end

  private

  attr_reader :numbers

  def create_row_from(number, operator)
    row_name = number
    row = [row_name]

    numbers.each do |i|
      cell_value = row_name.send(operator, i)
      row.push(cell_value)
    end

    row
  end
end
