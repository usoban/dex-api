defmodule DlabsApi.CommentView do
  use DlabsApi.Web, :view

  def render("comment.json", %{:comment => comment}) do
    %{id: comment.id,
      body: comment.body
    }
  end
end
