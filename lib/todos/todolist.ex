defmodule Todos.Todolist do
  alias Ecto.Repo
  alias Todos.Repo
  alias Todos.Todolist.Todo

  def list_todos, do: Repo.all(Todo)
  def get_todo!(id), do: Repo.get!(Todo, id)
end
