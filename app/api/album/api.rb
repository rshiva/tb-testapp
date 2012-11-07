require 'grape'

  module Album
   class API < Grape::API
    resource :music_albums do 
    
      get do 
        MusicAlbum.all
       end
    
      get ':id' do
        MusicAlbum.find(params[:id])
      end
     
      post do 
        @music_album = MusicAlbum.new
        @music_album.name = params[:name] if params[:name]
        @music_album.save
        
        status 201
        @music_album
               
      end 
     
     put ':id' do 
       @music_album = MusciAlbum.find(params[:id])
       @music_album.title = params[:name] if params[:title]
       @music_album.image_cover = params[:image_cover] if params[:image_cover]
       @music_album.save
        
       @music_album
     end
   
     delete ':id' do 
       MusicAlbum.destroy(params[:id])
     end

    end
  end
end
