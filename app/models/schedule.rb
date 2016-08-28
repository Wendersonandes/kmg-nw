class Schedule < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :workout
  has_many :days

  def fae_nested_parent
    :workout
  end

  def formatted_start_time
    start_time.strftime('%H:%M')
  end

  def formatted_end_time
    end_time.strftime('%H:%M')
  end

  def formatted_days
    days.pluck(:name).to_sentence
  end

end
