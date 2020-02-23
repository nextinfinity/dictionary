defmodule Dictionary.Application do

  use Application

  def start(_type, _args) do

    import Supervisor.Spec

    children = [
      worker(Dictionary.WordList, []),
      worker(Dictionary.AnimalList, []),
      worker(Dictionary.AdjectiveList, []),
    ]

    options = [
      name: Dictionary.Supervisor,
      strategy: :one_for_one,
    ]

    Supervisor.start_link(children, options)

  end
end