#2.	Con el paquete spotidy realiza una consulta para seleccionar los 10 artistas que han hecho 
#las colaboraciones más populares con Rosalía. De dichos artistas, selecciona las canciones en las 
#que no colaboran con ningún artista adicional y quédate con la de publicación más reciente (2).
library(spotidy)
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

NathyPeluso<-get_artist_top_tracks(
  "3VHAySZQPlfGlNLslzXYpN",
  country= "ES",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)

CruzCafune<-get_artist_top_tracks(
  "0jeYkqwckGJoHQhhXwgzk3",
  country= "ES",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)
kiddKeo<-get_artist_top_tracks(
  "0VZrPa7mWAYXH4CwmYk8Km",
  country= "ES",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)
AlvaroDiaz<-get_artist_top_tracks(
  "5J7rXWjtn5HzUkJ4Jet8Fr",
  country= "ES",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)
BadGyal<-get_artist_top_tracks(
  "4F4pp8NUW08JuXwnoxglpN",
  country= "ES",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)
LolaIndigio<-get_artist_top_tracks(
  "3bvfu2KAve4lPHrhEFDZna",
  country= "ES",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)
YungBee<-get_artist_top_tracks(
  "1rTUwYS38LkQTlT2fhikch",
  country= "ES",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)
DELLAFUENTE<-get_artist_top_tracks(
  "4bJh7sMPcVRiqe5jlnsWQV",
  country= "ES",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)
LelePons<-get_artist_top_tracks(
  "6i3DxIlAqnDkwELLw4aVrx",
  country= "ES",
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)

