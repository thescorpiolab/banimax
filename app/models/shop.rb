class Shop < ActiveRecord::Base
  include ShopifyApp::SessionStorage
  has_one :popup_setting, dependent: :destroy

  def api_version
    ShopifyApp.configuration.api_version
  end
end
