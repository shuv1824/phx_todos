defmodule Todos.Repo do
  use Ecto.Repo,
    otp_app: :todos,
    adapter: Ecto.Adapters.SQLite3
end
