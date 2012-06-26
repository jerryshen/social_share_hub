module SocialShareHub
  class << self
    attr_accessor :config
    
    def configure
      yield self.config ||= Config.new
    end
  end
  
  class Config
    # enable social sites to share,
    # * default : twitter facebook weibo douban
    # * site support: twitter facebook weibo douban
    attr_accessor :allowed_sites
    
    def initialize
    end
  end
end

SocialShareHub.configure do |conf|
  conf.allowed_sites = %w(twitter facebook weibo douban qq renren)
end