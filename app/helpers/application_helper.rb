# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def nl2br(str)
    str.gsub(/(\n)*\Z/m, '').gsub(/\n\n/, '<br/><br/>').gsub(/\n/, '')
  end
  
  def rounded_box(options = {}, &block)
    content = capture(&block)
    
    options[:class] = "#{options[:class]} rounded_box"
    
    concat(content_tag(:table, %Q{
        <tr>
          <td style="background-image: url(/images/topleft.png); height: 22px; width: 22px;"></td>
          <td style="background-image: url(/images/top.png); background-repeat: repeat-x;"></td>
          <td style="background-image: url(/images/topright.png);  height: 22px; width: 22px;""></td>
        </tr>
        <tr>
          <td style="background-image: url(/images/left.png); background-repeat: repeat-y;"></td>
          <td style="background-color: white;">
            #{content}
          </td>
          <td style="background-image: url(/images/right.png); background-repeat: repeat-y;"></td>
        </tr>
        <tr>
          <td style="background-image: url(/images/bottomleft.png);  height: 22px; width: 22px;""></td>
          <td style="background-image: url(/images/bottom.png); background-repeat: repeat-x;"></td>
          <td style="background-image: url(/images/bottomright.png);  height: 22px; width: 22px;""></td>
        </tr>
      }, options), block.binding)
    end
end
