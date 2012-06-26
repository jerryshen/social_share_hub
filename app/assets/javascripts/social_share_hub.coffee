window.SocialShareHub =
  openUrl : (url, title) ->
    window.open(url, title, 'width=700, height=680, top=0, left=0, toolbar=no, menubar=no, scrollbars=no, location=yes, resizable=no, status=no')
    false
    
  share : (el) ->
    site = $(el).data('site')
    title = encodeURIComponent($(el).parent().data('title'))
    img = encodeURIComponent($(el).parent().data("img"))
    url = encodeURIComponent(location.href)
    switch site
      when "weibo"
        SocialShareHub.openUrl("http://v.t.sina.com.cn/share/share.php?url=#{url}&pic=#{img}&title=#{title}&content=utf-8")
      when "twitter"
        SocialShareHub.openUrl("https://twitter.com/home?status=#{title}: #{url}")
      when "douban"
        SocialShareHub.openUrl("http://www.douban.com/recommend/?url=#{url}&title=#{title}&v=1&r=1")
      when "facebook"
        SocialShareHub.openUrl("http://www.facebook.com/sharer.php?t=#{title}&u=#{url}")
      when "qq"
        SocialShareHub.openUrl("http://v.t.qq.com/share/share.php?url=#{url}&title=#{title}&pic=#{img}")
      when "renren"
        SocialShareHub.openUrl("http://share.renren.com/share/buttonshare?link=#{url}&title=#{title}")
    false