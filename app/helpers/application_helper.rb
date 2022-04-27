module ApplicationHelper

  def link_to_function(name, function, html_options={})
    onclick = "#{"#{html_options[:onclick]}; " if html_options[:onclick]}#{function}; return false;"
    href    = html_options[:href] || '#'
    content_tag(:a, name, html_options.merge(href: href, onclick: onclick, class: "btn btn-info add_nested_fields_btn"))
  end


  def link_to_add_fields(name, f, association, partial_file=nil)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.simple_fields_for(association, new_object, child_index: "new_#{association}") do |builder|
      unless partial_file.nil?
        render(partial_file, f: builder)
      else
        render(association.to_s.singularize + "_fields", f: builder)
      end
    end
    link_to_function(name, "Site.add_fields(this, \"#{association}\", \"#{j fields}\")", { "data-behaviour" => "add_#{association.to_s}"})
  end

end
