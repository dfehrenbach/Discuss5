defmodule Discuss5.Topic do
  use Discuss5.Web, :model

  schema "topics" do
    field(:title, :string)
    belongs_to(:user, Discuss5.User)
    has_many(:comments, Discuss5.Comment)
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end
