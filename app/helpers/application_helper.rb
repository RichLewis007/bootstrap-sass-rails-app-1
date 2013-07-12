module ApplicationHelper

# SimpleForm provides excellent handling of validation errors for any attributes of a model. 
# However, some applications set model errors that are not matched to a specific form field. 
# These are called “base errors.” For example, a model might set an error like this: errors.add :base, "Credit card declined". 
# SimpleForm does not provide a helper to display base errors; if your application sets base errors, you’ll need to add the following view helper.

  def display_base_errors resource
    return '' if (resource.errors.empty?) or (resource.errors[:base].empty?)
    messages = resource.errors[:base].map { |msg| content_tag(:p, msg) }.join
    html = <<-HTML
    <div class="alert alert-error alert-block">
      <button type="button" class="close" data-dismiss="alert">&#215;</button>
      #{messages}
    </div>
    HTML
    html.html_safe
  end

# This extra helper is not needed in most applications; however, it can save time-consuming debugging for applications that use the errors.add :base method.

end