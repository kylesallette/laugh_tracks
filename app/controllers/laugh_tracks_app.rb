class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.all
    erb :"/comedians/index"
  end

  get '/comedians' do
    @comedian = Comedian.find(params[:id])
    erb :"/comedians/show"
  end

end
