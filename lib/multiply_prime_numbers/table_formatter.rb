require 'terminal-table'

class TableFormatter
  def draw(headings, rows)
    table = Terminal::Table.new
    table.headings = headings
    table.rows = rows
    table
  end
end
