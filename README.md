# Birthify
> Ruby on Rails back end API for Birthify, an application for creating Spotify playlists of songs that were released in the user's year of birth. 

Birthify uses the Spotify web API and the Spotify Web Player SDK to dynamically generate and play back Spotify playlists, as well as save them to the user's Spotify account. Users login with their Spotify credentials and enter their year of birth to create a new Birthify playlist. 

Front end Javascript & React app repo available here: https://github.com/slowbeam/birthify-client

##

![birthify demo 1](https://media.giphy.com/media/3GBXTvAcRPAgv03GDl/giphy.gif)

## Installation

OS X & Linux:

```sh
bundle install
```

## Usage example

Birthify can create a playlist of songs that came out in the user's birth year:

![birthify demo 2](https://media.giphy.com/media/MuE7qasFr4X1aTAgod/giphy.gif)


Birthify can save the playlist to the user's Spotify account:

![birthify demo 3](https://media.giphy.com/media/m8WIqiN6NBRYLaN2kX/giphy.gif)


## Development setup

The Birthify API is built using postgreSQL. Please install postgreSQL on your computer before attempting to load the API on your local server. 

```sh
rails db:create
rails db:migrate
rails s
```


## Release History

* 0.1.0
    * First official release
   


## Meta

Sandy Edwards – [@sedwardscode](https://twitter.com/sedwardscode) – sedwardscode@gmail.com

[https://github.com/slowbeam](https://github.com/slowbeam)

Brad Newman

[https://github.com/newmanbradm](https://github.com/newmanbradm)

## Contributing

1. Fork it (<https://github.com/slowbeam/vibe-list-server/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request
