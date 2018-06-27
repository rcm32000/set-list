class SetList < Sinatra::Base

  get '/songs' do
    @songs = Song.all.includes(:playlist)
    erb :"songs/index"
  end

end
