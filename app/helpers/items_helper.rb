module ItemsHelper
  def item_label_class(item)
    # The options are found in app/models/item.rb: STATUS_CHOICES
    return nil if item.status.blank?
    case item.status
    when 'Available'
      return 'class="label label-success"'
    when 'In Service', 'In Service - Degraded'
      return 'class="label label-warning"'
    when 'Out of Service', 'Sold', 'Destroyed'
      return 'class="label label-danger"'
    else
      # This should only happen if another status is added.
      return 'class="label label-default"'
    end
  end

  def edit_item_button
    return nil if cannot? :edit, @item
    return link_to 'Edit Item',
                   edit_item_path(@item),
                   class: 'btn btn-block btn-primary'
  end
  def add_repair_button
    return nil if cannot? :create, Repair
    return link_to 'Add Repair',
                   new_item_repair_path(@item),
                   class: 'btn btn-block btn-primary'
  end
  def add_inspection_button
    return nil if cannot? :create, Inspection
    return link_to 'Add Inspection',
                   new_item_inspection_path(@item),
                   class: 'btn btn-block btn-primary'
  end
end
