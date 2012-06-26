module SocialShareHub
  module Helper
    def social_share_hub_tag(message, options = {})
      html = []

      html << "<div class='social-share-hub clearfix'' data-title='#{message}' data-img='#{options[:image]}'>"
      
      SocialShareHub.config.allowed_sites.each do |name|
        link_title = t("social_share_hub.share_to", :name => t("social_share_hub.#{name.downcase}"))

        html << link_to("","#",
                        :"data-site" => name,
                        :class => "social_share_hub_#{name}",
                        :onclick => "return SocialShareHub.share(this);",
                        :title => link_title)
      end
      html << "</div>"
      raw html.join("\n")
    end
  end
end