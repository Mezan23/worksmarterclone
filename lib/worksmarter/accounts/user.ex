defmodule Worksmarter.Accounts.User do
  use Ash.Resource,
    domain: Worksmarter.Accounts,
    data_layer: AshPostgres.DataLayer

  postgres do
    table "users"
    repo Worksmarter.Repo
  end

  attributes do
    uuid_primary_key :id
    attribute :name, :string, allow_nil?: false
    attribute :email, :string, allow_nil?: false
  end

  actions do
    defaults [:create, :read, :update, :destroy]
  end
end
