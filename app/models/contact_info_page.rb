class ContactInfoPage < Fae::StaticPage

  @slug = 'contact_info'

  # required to set the has_one associations, Fae::StaticPage will build these associations dynamically
  def self.fae_fields
    {
      email: { type: Fae::TextField },
      phone: { type: Fae::TextField },
      address: { type: Fae::TextField },
      facebook_url: { type: Fae::TextField },
      instagram_url: { type: Fae::TextField }
    }
  end

end
