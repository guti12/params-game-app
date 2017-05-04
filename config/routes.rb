Rails.application.routes.draw do
  get '/game' => 'games#game'
  get '/guess' => 'games#guess'
  get '/url_segment_params/:this_is_a_key' => 'games#url_segment'
  get 'guess_number/:number' => 'games#guess_num'
  get 'your_name/*random/:name' => 'games#random_info'
end
