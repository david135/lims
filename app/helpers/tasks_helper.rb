module TasksHelper
  def task_label_class(task)
    # The options are found in app/models/task.rb: STATUS_CHOICES
    return nil if task.status.blank?
    case task.status
    when 'Full'
      return 'class="label label-success"'
    when 'Partially Filled'
      return 'class="label label-warning"'
    when 'Empty'
      return 'class="label label-danger"'
    else
      # This should only happen if another status is added.
      return 'class="label label-default"'
    end
  end
end
