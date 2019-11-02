require 'kramdown/utils'

module HtmlTagExtended

  def add_class_attribute(attr, new_class)
    new_attr = attr.dup
    new_attr['class'] = (attr.has_key?('class') ? "#{attr['class']} ": '') << new_class
    new_attr
  end
  
  def format_with_extended(el, indent, new_class)
    attr = add_class_attribute(el.attr, new_class)
    format_as_indented_block_html(el.type, attr, inner(el, indent), indent)
  end
      
  def convert_table(el, indent)
    table = format_with_extended(el, indent + 1, 'mdc-data-table__table')
        
    div_attr = Kramdown::Utils::OrderedHash.new
    div_attr['class'] = 'mdc-data-table table_container'
    format_as_indented_block_html('div', div_attr, table, indent)
  end

  def convert_tbody(el, indent)
    format_with_extended(el, indent, 'mdc-data-table__content')
  end

  def convert_tr(el, indent)
    add_class =
      if @stack[-1].type == :thead
        'mdc-data-table__header-row'
      else
        'mdc-data-table__row'
      end
    format_with_extended(el, indent, add_class)
  end

  def convert_td(el, indent)

    add_class =
      if @stack[-2].type == :thead
        'mdc-data-table__header-cell'
      else
        'mdc-data-table__cell'
      end
    new_attr = add_class_attribute(el.attr, add_class)

    el.attr.replace(new_attr)

    super(el, indent)
  end
end

module Kramdown
  module Converter
    class Html
      prepend HtmlTagExtended
    end
  end
end
