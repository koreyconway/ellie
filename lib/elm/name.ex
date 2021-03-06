defmodule Elm.Name do
  defstruct user: "user", project: "project"

  @type t :: %Elm.Name{user: String.t(), project: String.t()}

  def core() do
    %Elm.Name{ user: "elm-lang", project: "core" }
  end

  def browser() do
    %Elm.Name{ user: "elm-lang", project: "browser" }
  end

  def html() do
    %Elm.Name{ user: "elm-lang", project: "html" }
  end

  def to_string(%Elm.Name{user: user, project: project}) do
    user <> "/" <> project
  end

  def from_string(value) do
    with [user, project] <- String.split(value, "/") do
      {:ok, %Elm.Name{user: user, project: project}}
    else
      _ -> :error
    end
  end
end
