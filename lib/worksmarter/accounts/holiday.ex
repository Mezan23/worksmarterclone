defmodule Worksmarter.Accounts.Holiday do
  use Ash.Resource,
    domain: Worksmarter.Accounts,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  postgres do
    table "holidays"
    repo Worksmarter.Repo
  end

  attributes do
    uuid_primary_key :id

    attribute :name, :string, allow_nil?: false
    attribute :date, :date, allow_nil?: false
    attribute :description, :string
  end

  actions do
    defaults [:create, :read, :update, :destroy, :list]
  end

  graphql do
    type :holiday

    queries do
      get :get_holiday
      list :list_holidays
    end

    mutations do
      create :create_holiday
      update :update_holiday
      destroy :destroy_holiday
    end
  end
end
