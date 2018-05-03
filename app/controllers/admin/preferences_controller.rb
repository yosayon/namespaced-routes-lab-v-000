class Admin::PreferencesController < ApplicationController
 
 def index
  @preferences = Preference.first_or_create(:artist_sort_order => "ASC", :allow_create_artists => true, :song_sort_order => "ASC", :allow_create_songs => true)
 end
 
 def update
  @preferences = Preference.find(params[:id])
  @preferences.update(preference_params)
  redirect_to admin_preferences_path(@preferences)
 end
 
 private
 def preference_params
  params.require(:preference).permit(:artist_sort_order, :allow_create_artists, :song_sort_order, :allow_create_songs)
 end
 
end