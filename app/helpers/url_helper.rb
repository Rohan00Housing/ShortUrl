module UrlHelper
  include EncodingHelper

  def getLongUrlFromShort(short_)
    url = Url.find_by_short_url(short_)

    if url == nil
      # render json: {message:'url not found'}, status: 404
      # render json: "url not found"
      return "url not found"
    end

    longUrl = url.long_url
    old_time = url.updated_at
    is_expired = check_expired(old_time)

    if is_expired
      # render json: {message:'url not found'}, status: 404
      return "url not found"
    else
      return longUrl
    end
  end

  def getShortUrlFromLong(long_)

    alreadyShortUrl = Url.find_by_long_url(long_)

    if alreadyShortUrl != nil
      return alreadyShortUrl.short_url
    end

    shortenedUrl_ = getShortUrl(long_)

    return Url.save_new_url(shortenedUrl_,long_)
  end

  def check_expired(time)
    if Time.now.utc - time > 86400
      return true
    else
      return false
    end
  end

end