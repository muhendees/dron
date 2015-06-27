# Dron


This app was created by reading [Phoenix getting started guide](http://www.phoenixframework.org/docs/overview)
and this is my first MVC app, so any advices and corrections welcomed.

Special thanks to [Elixir-lang Slack channel](https://elixir-lang.slack.com) guys for help.


To start this app:

1. Install dependencies with `mix deps.get`
2. Change [config/dev.exs](config/dev.exs) for Postgrex connection details
3. Then run `$ mix exto.create && mix ecto.migrate` 
4. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit `localhost:4000` from your browser.
