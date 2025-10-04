defmodule Worksmarter.GraphQL.ResourceSchema do
  use AshGraphql.Schema

  resources do
    resource Worksmarter.Accounts.Holiday,
      type: :holiday
  end
end
