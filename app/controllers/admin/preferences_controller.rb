class Admin::PreferencesController < ApplicationController
    def index
        @preferences = Preference.first_or_create(artist_sort_order: "DESC", song_sort_order: "ASC", allow_create_artists: false, allow_create_songs: true)
    end

    def update
        @preferences = Preference.last
        @preferences.update(preference_params)
        redirect_to admin_preferences_path, alert: "Settings were successfully updated."
    end

    private

    def preference_params
        params.require(:preference).permit(:artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs)
    end
end