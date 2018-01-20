class TableGenerator
  def initialize(numbers)
    @numbers = numbers
  end

  def header
    @numbers.clone.unshift(nil)
  end

  def rows
    @numbers.map do |number|
      create_row_from(number)
    end
  end

  private

  def create_row_from(number)
    row_name = number
    row = [row_name]

    @numbers.each do |i|
      row.push(row_name * i)
    end

    row
  end
end
