module LessonHelper
  def tiny_format(text)
    h(text).gsub("\n", "<br />").html_safe
  end
  def big2small(text)
    h(text).gsub("Big", "Small").html_safe
  end
end
