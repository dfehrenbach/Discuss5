# Discuss5

This is a code along with the Udemy course "The Complete Elixir and Phoenix Bootcamp"
taught by Stephen Grider. One small diference removes a bug that exists at the end of the course.

The name Discuss5 shall serve as a reminder that as of 3/26/2018, BitDefender on Windows
eats up and quarantines a multitude of files as a result of running a phoenix server. This
critically breaks phoenix and mix and makes it very difficult to get live-reload working
because the inotifywait.exe is quarantined religiously.

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
