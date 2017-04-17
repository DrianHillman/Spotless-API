# Spotless API Project
> Experiment with the Spotify API using GraphQL in a Ruby environment!

![Image](http://routenote.com/blog/wp-content/uploads/2015/12/running-og.jpg)

## Getting Started
### 1. Clone the repository
`git clone https://github.com/DrianHillman/Spotless-API.git` **or**

`git clone git@github.com:DrianHillman/Spotless-API.git`

### 2. Register a new app with Spotify
- Create a [Spotify developer account](https://developer.spotify.com)
- Under **My Apps**, create a new application

### 3. Create `application.yml`

- Create a new file titled `application.yml` within `app` > `config`
> `touch app/config/application.yml`
- Based on `application.example.yml`, enter the variables for `SPOTIFY_CLIENT_ID:` &
`SPOTIFY_CLIENT_SECRET:` provided by your [Spotify developer account](https://developer.spotify.com/my-applications)

### 4. Manage your Seed Data
Open `db` > `seeds.rb` to manage your data pulled into the application

Update the first line to be sure that your Spotify user data is pulled into the application
> `user = RSpotify::User.find('YOUR_USERNAME_HERE')`

_***This step to change later**_

### 5. Run locally

> Run `bundle install`
>
> Run `rails s` to start the rails server

#### 🎉 Navigate to `http://localhost:3000/graphiql` to view your data through GraphQL!

## FAQs

#### How do I use GraphQL?
Check out the [GraphQL documentation here!](https://developer.github.com/early-access/graphql/)
#### How do I use Graphiql?
This app uses the `graphiql-rails` gem, check out [its documentation here!](https://github.com/rmosolgo/graphiql-rails)
