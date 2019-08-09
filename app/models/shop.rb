class Shop < ActiveRecord::Base
  include ShopifyApp::SessionStorage
  has_one :popup_setting, dependent: :destroy
  after_create :set_configuration
	after_update :set_configuration, if: ->(obj){ obj.saved_change_to_shopify_token? }

	def set_configuration
  	unless popup_setting.present?
  		create_popup_setting
  	end
  end

  def api_version
    ShopifyApp.configuration.api_version
  end
end
