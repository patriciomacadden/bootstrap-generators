module LayoutHelper
  def bootstrap_flash_name(flash_name)
    case flash_name
      when :alert then 'error'
      when :notice then 'success'
    end
  end
  
  def title(page_title)
    content_for :title, page_title
  end
end
