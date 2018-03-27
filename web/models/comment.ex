defmodule Discuss5.Comment do
  use Discuss5.Web, :model

  @derive {Poison.Encoder, only: [:content, :user]}

  schema "comments" do
    field(:content, :string)
    belongs_to(:user, Discuss5.User)
    belongs_to(:topic, Discuss5.Topic)

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:content])
    |> validate_required([:content])
  end
end
