defmodule TeamBudgetGraphql.Resolvers.UserResolver do
  def list_users(_parent, _params, _resolutions) do
    {:ok, %{email: "teste@example.com"}}
  end
end
