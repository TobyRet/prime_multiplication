require 'terminal-table/import'

module TableFormatter
  TABLE_STYLE = {
    border_top: false,
    border_bottom: false,
    alignment: :right
  }

  def self.draw(headings, rows)
    t = table(headings, *rows)
    t.style = TABLE_STYLE
    t
  end
end
