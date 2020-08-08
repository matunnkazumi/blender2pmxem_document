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
        
    div_attr = Hash.new
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

  def convert_header(el, indent)

    level = output_header_level(el.options[:level])
    add_class =
      case level
      when 1
        'mdc-typography--headline3'
      when 2
        'mdc-typography--headline4'
      when 3
        'mdc-typography--headline5'
      when 4
        'mdc-typography--headline6'
      when 5
        'mdc-typography--subtitle1'
      when 6
        'mdc-typography--subtitle2'
      else
        ''
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
