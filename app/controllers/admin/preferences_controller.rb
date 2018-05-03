class Admin::PreferencesController < ApplicationController
 
 def index
  @preference = Preference.first_or_create(:artist_sort_order => "ASC", :allow_create_artists => true, :song_sort_order => "ASC", :allow_create_songs => true)
 end
 
 def update
  @preference = Preference.find(params[:id])
  @preference.update(preference_params)
  redirect_to admin_preferences_path(@preference)
 end
 
 private
 def preference_params
  params.require(:preference).permit(:artist_sort_order, :allow_create_artists, :song_sort_order, :allow_create_songs)
 end
 
end