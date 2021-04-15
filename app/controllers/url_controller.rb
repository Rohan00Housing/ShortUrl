class UrlController < ApplicationController
  include UrlHelper

  def index
  end

  def short_to_long
    short_ = params[:short_url]
    render json: getLongUrlFromShort(short_)
    # @url = Url.find_by(short_url:short_)
    # #byebug, binding.pry
    # # render json: @longUrl

    # if @url == nil
    #   render json: {message:'url not found'}, status: 404
    #   # render json: "url not found"
    #   return
    # end

    # @longUrl = @url.long_url
    # @old_time= @url.updated_at
    # @is_expired = check_expired(@old_time)

    # if @is_expired
    #   render json: {message:'url not found'}, status: 404
    # else
    #   # redirect_to @longUrl
    #   render json: @longUrl
    # end
  end

  def long_to_short
    long_ = params[:long_url]
    render json: getShortUrlFromLong(long_)
    # @alreadyShortUrl = Url.find_by(long_url:long_)

    # if @alreadyShortUrl != nil
    #   render json: @alreadyShortUrl.short_url
    #   return
    # end

    # shortenedUrl_ = getShortUrl(long_)

    # @url = Url.new(short_url:shortenedUrl_, long_url:long_)
    
    # if @url.save
    #   render json: shortenedUrl_
    # else
    #   render json: long_
    # end
  end

end
