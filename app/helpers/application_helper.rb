module ApplicationHelper
  def show_time_sheet(data)
    output = []

    data.to_a.each do |hour, status|
      if status
        output << content_tag('s', hour)
      else
        output << content_tag('b', hour)
      end
    end

    output.join "\n"
  end
end
