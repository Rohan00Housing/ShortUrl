module EncodingHelper

  def getShortUrl(longUrl)
    cur_time = Time.now.to_i
    shortUrl = encodeBase62(cur_time)
    return shortUrl
  end

  def encodeBase62(num)
    str = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    encoded_string = ""

    while num > 0 do
      rem = num % 62
      num = num / 62
      encoded_string = encoded_string + str[rem]
    end

    return encoded_string
  end

end