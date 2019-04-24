module NodesHelper

  def show_check_icon(boolean_value)
    if boolean_value then
      icon('fas', 'check', 'Complete')
    else
      icon('fas', 'exclamation-triangle', 'Pending')
    end
  end
end
