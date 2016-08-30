class Medium < ApplicationRecord
  include Fae::BaseModelConcern

  has_one :image, -> { where(attached_as: 'image') },
    as: :imageable,
    class_name: '::Fae::Image',
    dependent: :destroy
  accepts_nested_attributes_for :image, allow_destroy: true

  acts_as_list add_new_at: :top
  default_scope { order(:position) }

  validates :media_type, presence: true

  scope :photos, -> { where(media_type: 'Photo') }

  def fae_display_field
  	name
  end

end