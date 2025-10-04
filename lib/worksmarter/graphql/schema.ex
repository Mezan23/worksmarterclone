defmodule Worksmarter.GraphQL.Schema do
  use Absinthe.Schema
  use AshGraphql, otp_app: :worksmarter

  alias Worksmarter.Accounts

  query do
    AshGraphql.queries(Accounts)
  end

  mutation do
    AshGraphql.mutations(Accounts)
  end
end
