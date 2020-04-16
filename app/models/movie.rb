class Movie < ApplicationRecord
  include HTTParty

  # default_options.update(verify: false) # disable SSL verification(必要に応じて)
  default_params api_key: '4d53cee11e3a0a4c6a08ae27d63058c4', language: 'ja-JP' #共通パラメタ                 
  format :json

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
