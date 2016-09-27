class Task < ActiveRecord::Base
  belongs_to :event
  validates :event, presence: true
  validates :title, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates_chronology :start_time, :end_time

  # has_many :requirements
  # has_many :assignments, through: :requirements

  STATUS_CHOICES = ['Empty', 'Partially Filled', 'Full', 'Cancelled']

  def status
    @stub_status ||= STATUS_CHOICES[rand(4)]
    return @stub_status
  end

  def requirements_count
    @stub_requirements ||= rand(25) + 1
    return @stub_requirements
  end

  def requirements_filled_count
    @stub_requirements_filled ||= rand(requirements_count)
    return @stub_requirements_filled
  end

end
