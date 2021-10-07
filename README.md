# Hotwire Workshop

The goal of this repository is to give developers a playground to understand and get to know the benefits that [Hotwire](https://hotwired.dev/) brings to the user experience. There are 4 exercises that will cover [Turbo](https://turbo.hotwired.dev/), the heart of Hotwire, and [Stimulus](https://stimulus.hotwired.dev/), a modest Javascript framework to cover for those cases where some custom code is needed.

All of the exercises are based on a chat application built with Rails 6. To run it, you'll need to install the following things:

- Postgres (if you are on Mac, Postgres.app is the way to go)
- Ruby 3.0
- Bundler (for that version of Ruby)
- Yarn
- Node

In order to run the server for the first time, execute these commands:

- `bundle install`
- `yarn install`
- `rails db:create`
- `rails db:migrate`
- `rails db:seed`
- `bundle exec rails s`

After that, you'll need to sign up so that you have a user to test with.

## Exercise 1 - Turbo Drive

**Branch:** `turbo-drive-exercise`

Just by enabling Turbo Drive, in page links for example, your application will get a huge boost in the navigation experience. Follow the next steps to see this by yourself:

1. Log in and click on `Edit` for any of the existing chats that are listed, you will experience the traditional navigation on a Rails app
2. Enable Turbo Drive on the `Edit` link to see the difference
3. Test what happens when navigating for a 2nd time to a page that was previously edited (e.g. change any fixed text in the edit view of a chat)

## Exercise 2 - Turbo Frames

**Branch:** `turbo-frame-exercise`

In this exercise you'll learn about Turbo Frames and how you can only update predefined parts of the page after a request. The idea is to add `<turbo-frame>` elements in the views so that you can:

1. Show the edit form of a chat on the index page
2. Keep the scroll position after searching in the index page

**Note:** For the 2nd point, you'll probably need to add more chats to the system so that the list is longer.

## Exercise 3 - Turbo Streams

**Branch:** `turbo-stream-exercise`

Turbo Streams provide a very simple way to power real-time messaging in the app, compared to Action Cable.

For this exercise, you need to:

1. Broadcast when a new chat message is created
2. Subscribe the chat view to the Turbo Stream
3. Support Turbo Stream format in the response of the `create` endpoint for messages
4. Reset the message field after the submit (optional)
5. Disable the send button once the message field is reset (optional)

Regarding the last 2, you can use some methods in these Stimulus controllers:

- `form_controller.js`
- `messages_controller.js`

## Exercise 4 - Stimulus (optional)

**Branch:** `turbo-stream-exercise`

This last exercise is optional and will give you the opportunity to try some other tools that Stimulus brings to the table, which can be of great help to make your JS code simpler.

The goal is to display a skeleton loader after using the search functionality in the page where all of the chats are listed, and hide it again once the response arrives. You need to achieve this with Stimulus targets and actions.

Also, the skeleton loader is already hidden in the index view:

```ruby
<% 2.times do  %>
  <div class="border border-indigo-300 shadow rounded-md p-2.5 mb-4 w-full mx-auto hidden">
    <div class="animate-pulse flex">
      <div class="flex-1 space-y-2.5">
        <div class="h-3 bg-indigo-400 rounded w-1/2"></div>
        <div class="h-3 bg-indigo-400 rounded w-5/6"></div>
      </div>
    </div>
  </div>
<% end %>
```

## Credits

- [Juan Diego Rosales](https://github.com/jdrosales17)
- [Juan Ferrari](https://github.com/JuannFerrari)
- [Julian Pasquale](https://github.com/JulianPasquale)
