defmodule TodosWeb.TodoController do
  use TodosWeb, :controller

  alias Todos.Todolist

  def index(conn, _params) do
    todos = Todolist.list_todos()
    render(conn, :index, todos: todos)
  end

  def show(conn, %{"id" => id}) do
    todo = Todolist.get_todo!(id)
    render(conn, :show, todo: todo)
  end

  def create(conn, %{"todo" => todo_params}) do
    {:ok, todo} = Todolist.create_todo(todo_params)
    render(conn, :show, todo: todo)
  end
end
