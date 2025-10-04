defmodule Worksmarter.Accounts do
  use Ash.Domain,
    extensions: [AshGraphql.Domain]

  resources do
    resource Worksmarter.Accounts.User
  end

  resources do
  resource Worksmarter.Accounts.Holiday
  end
end
