module InspectionsHelper
  def inspection_label_class(inspection)
    # The options are found in app/models/inspection.rb: STATUS_CHOICES
    return nil if inspection.status.blank?
    case inspection.status
    when 'Complete - Passed'
      return 'class="label label-success"'
    when 'Incomplete'
      return 'class="label label-warning"'
    when 'Complete - Failed'
      return 'class="label label-danger"'
    else
      # This should only happen if another status is added.
      return 'class="label label-default"'
    end
  end
end
