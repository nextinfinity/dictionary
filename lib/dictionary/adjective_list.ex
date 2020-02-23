defmodule Dictionary.AdjectiveList do

  @me __MODULE__

  def start_link() do
    Agent.start_link(&word_list/0, name: @me)
  end

  def adjective_list() do
    "../../assets/adjectives.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
  end

  def random_adjective() do
    Agent.get(@me, &Enum.random/1)
  end
end