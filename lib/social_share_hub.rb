require "social_share_hub/version"
require "social_share_hub/config"
require "social_share_hub/helper"

module SocialShareHub
  module Rails
    if ::Rails.version < "3.1"
      require "social_share_hub/railtie"
    else
      require "social_share_hub/engine"
    end
  end
end

ActionView::Base.send :include, SocialShareHub::Helper