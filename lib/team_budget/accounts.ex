defmodule TeamBudget.Accounts do
  alias TeamBudget.{Accounts.User, Repo}

  def list_users() do
    Repo.all(User)
  end
end
