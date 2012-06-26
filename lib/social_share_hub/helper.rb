module SocialShareHub
  module Helper
    def social_share_hub_tag(message, link, options = {})
      html = []
      html << "<div class='social-share-hub clearfix'>"
      
      SocialShareHub.config.allowed_sites.each do |name|
        title = t "social_share_hub.share_to", :name => t("social_share_hub.#{name.downcase}")

        case name.to_sym
        when :weibo
          html << social_share_hub_weibo_link(message, link, options)
        when :douban
          html << social_share_hub_douban_link(message, link, options)
        when :renren
          html << social_share_hub_renren_link(message, link, options)
        end
        
      end
      html << "</div>"
      raw html.join("\n")
    end

    def social_share_hub_weibo_link(message, link, options)
      "<a class=\"social_share_hub_weibo\" href=\"javascript:void((function(s,d,e){var f='http://v.t.sina.com.cn/share/share.php?url=',u=d.location,l=d.title,p=[e('#{link}'),'&title=',e('#{message}')].join('');function%20a(){if(!window.open([f,p].join(''),'weibo',['toolbar=0,status=0,resizable=1,width=626,height=436,left=',(s.width-626)/2,',top=',(s.height-436)/2].join('')))u.href=[f,p].join('');};if(/Firefox/.test(navigator.userAgent))setTimeout(a,0);else%20a();})(screen,document,encodeURIComponent));\" title=\"Sina Weibo\">&nbsp;</a>".html_safe
    end

    def social_share_hub_douban_link(message, link, options)
      "<a class=\"social_share_hub_douban\" href=\"javascript:void(function(){var d=document,e=encodeURIComponent,s1=window.getSelection,s2=d.getSelection,s3=d.selection,s=s1?s1():s2?s2():s3?s3.createRange().text:'',r='http://www.douban.com/recommend/?url='+e('#{link}')+'&title='+e('#{message}')+'&sel='+e(s)+'&v=1',x=function(){if(!window.open(r,'douban','toolbar=0,resizable=1,scrollbars=yes,status=1,width=450,height=330'))location.href=r+'&r=1'};if(/Firefox/.test(navigator.userAgent)){setTimeout(x,0)}else{x()}})()\" title=\"Douban\">&nbsp;</a>".html_safe
    end

    def social_share_hub_renren_link(message, link, options)
      "<a class=\"social_share_hub_renren\" href=\"javascript:void((function(s,d,e){if(/renren\.com/.test(d.location))return;var f='http://share.renren.com/share/buttonshare?link=',u=d.location,l=d.title,p=[e('#{link}'),'&title=',e(l)].join('');function%20a(){if(!window.open([f,p].join(''),'xnshare',['toolbar=0,status=0,resizable=1,width=626,height=436,left=',(s.width-626)/2,',top=',(s.height-436)/2].join('')))u.href=[f,p].join('');};if(/Firefox/.test(navigator.userAgent))setTimeout(a,0);else%20a();})(screen,document,encodeURIComponent));\" title=\"Renren\">&nbsp;</a>".html_safe
    end
  end
end