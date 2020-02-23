defmodule Dictionary.AnimalList do

  @me __MODULE__

  def start_link() do
    Agent.start_link(&word_list/0, name: @me)
  end

  def animal_list() do
    "../../assets/animals.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
  end

  def random_animal() do
    Agent.get(@me, &Enum.random/1)
  end
end