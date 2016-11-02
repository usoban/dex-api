defmodule DlabsApi.Comment do
  use DlabsApi.Web, :model

  schema "comments" do
    field :body, :string
    belongs_to :post, DlabsApi.Post

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:body, :post_id])
    |> validate_required([:body, :post_id])
  end
end
