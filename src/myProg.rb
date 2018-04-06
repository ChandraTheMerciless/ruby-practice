# NOTE: Tutorial I'm working from is here: http://phrogz.net/programmingruby/tut_classes.html

class Song
  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def getSongDetails
    "Song: #{@name}--#{@artist} (#{@duration})"
  end
end

class KaraokeSong < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end

  def getSongDetails
    super + " [#{@lyrics}]"
  end
end

aSong = Song.new("Bicylops", "Fleck", 260)
puts aSong.getSongDetails

aKaraokeSong = KaraokeSong.new("My Way", "Sinatra", 225, "And now, the...")
puts aKaraokeSong.getSongDetails
