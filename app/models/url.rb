class Url < ApplicationRecord

  def self.find_by_short_url(short_)
    url = Url.find_by(short_url:short_)
    return url
  end

  def self.find_by_long_url(long_)
    url = Url.find_by(long_url:long_)
    return url
  end

  def self.save_new_url(short_,long_)
    url = Url.new(short_url:short_, long_url:long_)
    
    if url.save
      return short_
    else
      return "unable to short"
    end
  end

end
