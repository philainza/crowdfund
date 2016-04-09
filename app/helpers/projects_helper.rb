module ProjectsHelper
  def format_days_remaining(project)
    current_time = Time.now
    if project.expired?
      content_tag(:strong, 'All Done!')
    else
      distance_of_time_in_words(current_time, project.pledging_ends_on)
    end
  end
end
