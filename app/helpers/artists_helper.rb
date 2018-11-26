module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_select(artist_id, artist)
    if artist_id
      hidden_field_tag :artist_id
      content_tag :p, artist.name
    else
      select_tag :artist_id, options_from_collection_for_select(Artist.all, :id, :name)
    end
  end
end
