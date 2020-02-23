defmodule Dictionary do

  alias Dictionary.WordList
  alias Dictionary.AnimalList
  alias Dictionary.AdjectiveList

  defdelegate random_word(), to: WordList
  defdelegate random_adjective(), to: AdjectiveList
  defdelegate random_animal(), to: AnimalList
end
