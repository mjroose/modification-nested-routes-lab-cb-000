module SongsHelper
  def artist_select(artist)
    if artist
      hidden_field_tag :artist_id
      content_tag :p, artist.name
    else
      select_tag @artists, options_from_collection_for_select(@artists, :id, :name)
  end
end
