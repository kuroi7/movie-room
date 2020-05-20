class Movie < ApplicationRecord
  include HTTParty

  # default_options.update(verify: false) # disable SSL verification(必要に応じて)
  default_params api_key: Rails.application.secrets.tmdb_api_key, language: 'ja-JP' #共通パラメタ
  format :json

  def self.index 
    base_uri 'https://api.themoviedb.org/3/movie/now_playing'
    get("", query: {}) # {}の中身はパラメタ
  end

  # キーワードによる検索機能
  # https://developers.themoviedb.org/3/search/search-keywordsに参照
  def self.search term
    base_uri 'https://api.themoviedb.org/3/search/movie'
    get("", query: { query: term }) # {}の中身はパラメタ
  end

  # 指定の映画の詳細情報を取得
  # https://developers.themoviedb.org/3/movies/get-movie-detailsに参照
  def self.details id
    base_uri "https://api.themoviedb.org/3/movie/#{id}"
    get("", query: { } ) #パラメタなし
  end
end
