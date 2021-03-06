module ApplicationHelper
  def logo
    logo = image_tag("logopm.png", :alt => "Sample App", :class => "round")
  end
  
  #Return a title on a per page bsis
  def title
    base_title = "Sample application for MT"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
