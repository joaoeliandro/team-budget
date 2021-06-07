defmodule TeamBudgetGraphql.Schema do
  use Absinthe.Schema

  import AbsintheErrorPayload.Payload

  alias TeamBudgetGraphql.Resolvers

  import_types(TeamBudgetGraphql.Types)
  import_types(AbsintheErrorPayload.ValidationMessageTypes)

  payload_object(:user_payload, :user)

  query do
    @desc "Get list of all users"
    field :list_users, list_of(:user) do
      resolve(&Resolvers.UserResolver.list_users/3)
    end
  end

  mutation do
    @desc "Create a new User"
    field :create_user, :user_payload do
      arg(:user, non_null(:user_input))
      resolve(&Resolvers.UserResolver.create_users/3)
      middleware(&build_payload/2)
    end
  end
end
