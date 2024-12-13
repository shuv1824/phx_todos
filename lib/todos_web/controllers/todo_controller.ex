defmodule TodosWeb.TodoController do
  use TodosWeb, :controller

  alias Todos.Todolist

  def index(conn, _params) do
    todos = Todolist.list_todos()
    json(conn, todos)
  end
end
