defmodule DlabsApi.PostView do
  use DlabsApi.Web, :view

  def render("index.json", %{posts: posts}) do
    %{
      data: render_many(posts, DlabsApi.PostView, "post.json"),
      count: Enum.count(posts)
    }
  end

  def render("show.json", %{post: post}) do
    %{data: render_one(post, DlabsApi.PostView, "post.json")}
  end

  def render("post.json", %{post: post}) do
    %{id: post.id,
      title: post.title,
      body: post.body,
      comments: render_many(post.comments, DlabsApi.CommentView, "comment.json")}
  end
end
