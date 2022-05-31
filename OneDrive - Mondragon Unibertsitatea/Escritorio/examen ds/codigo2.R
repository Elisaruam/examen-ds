library(spotidy)
library(dplyr)
SPOTIFY_CLIENT_ID <-"79ba4f46f96048509889804d6ae01f8c"
SPOTIFY_CLIENT_SECRET <- "840aa37dd39a4b01a3d388f4d61ec931"

my_token <- get_spotify_api_token(SPOTIFY_CLIENT_ID, SPOTIFY_CLIENT_SECRET)


artist <- search_artists(
  "Rosalia",
  output = c("tidy"),
  limit = 20,
  offset = 0,
  token = my_token
)



artistRelated<-get_artist_related_artists(
  "7ltDVBr6mKbRvohxheJ9h1",
  output = c("tidy"),
  limit = 20,
  offset = 0,
  token = my_token
)

C.tangana<-get_artist_top_tracks(
  "5TYxZTjIPqKM8K8NuP9woO",
  country= "ES",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)

C.tanganaTop <- C.tangana %>%
  filter(popularity==max(popularity)) %>%
  select(track_id)

  

NathyPeluso<-get_artist_top_tracks(
  "3VHAySZQPlfGlNLslzXYpN",
  country= "ES",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)

NathyPelusoTop <- NathyPeluso %>%
  filter(popularity==max(popularity)) %>%
  select(track_id)


CruzCafune<-get_artist_top_tracks(
  "0jeYkqwckGJoHQhhXwgzk3",
  country= "ES",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)
CruzCafuneTop <- CruzCafune %>%
  filter(popularity==max(popularity)) %>%
  select(track_id)



kiddKeo<-get_artist_top_tracks(
  "0VZrPa7mWAYXH4CwmYk8Km",
  country= "ES",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)

kiddKeoTop <- kiddKeo %>%
  filter(popularity==max(popularity)) %>%
  select(track_id)

AlvaroDiaz<-get_artist_top_tracks(
  "5J7rXWjtn5HzUkJ4Jet8Fr",
  country= "ES",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)

AlvaroDiazTop <- AlvaroDiaz %>%
  filter(popularity==max(popularity)) %>%
  select(track_id)

BadGyal<-get_artist_top_tracks(
  "4F4pp8NUW08JuXwnoxglpN",
  country= "ES",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)

BadGyalTop <- BadGyal %>%
  filter(popularity==max(popularity)) %>%
  select(track_id)


LolaIndigio<-get_artist_top_tracks(
  "3bvfu2KAve4lPHrhEFDZna",
  country= "ES",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)
LolaIndigioTop <- LolaIndigio %>%
  filter(popularity==max(popularity)) %>%
  select(track_id)

YungBee<-get_artist_top_tracks(
  "1rTUwYS38LkQTlT2fhikch",
  country= "ES",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)
YungBeeTop <- YungBee %>%
  filter(popularity==max(popularity)) %>%
  select(track_id)

DELLAFUENTE<-get_artist_top_tracks(
  "4bJh7sMPcVRiqe5jlnsWQV",
  country= "ES",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)

DELLAFUENTETop <- DELLAFUENTE %>%
  filter(popularity==max(popularity)) %>%
  select(track_id)

LelePons<-get_artist_top_tracks(
  "6i3DxIlAqnDkwELLw4aVrx",
  country= "ES",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)

LelePonsTop <- LelePons %>%
  filter(popularity==max(popularity)) %>%
  select(track_id)

tops<-data.frame(LelePonsTop,DELLAFUENTETop,YungBeeTop,LolaIndigioTop,BadGyalTop,AlvaroDiazTop,kiddKeoTop,CruzCafuneTop,NathyPelusoTop,C.tanganaTop)


