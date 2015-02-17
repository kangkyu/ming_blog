module ApplicationHelper

  def flash_dismiss_button
    content_tag(:button, class: "close", type: "button", "data-dismiss"=> "alert") do
      content_tag(:span, "×", "aria-hidden"=> "true") +
      content_tag(:span, "Close", class: "sr-only")
    end
  end

end
