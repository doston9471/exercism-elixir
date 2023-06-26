defmodule RPG.CharacterSheet do
  def welcome do
    IO.puts("Welcome! Let's fill out your character sheet together.")
  end

  def ask_name do
    IO.puts("What is your character's name?")
    String.trim(IO.gets(""))
  end

  def ask_class do
    IO.puts("What is your character's class?")
    String.trim(IO.gets(""))
  end

  def ask_level do
    IO.puts("What is your character's level?")
    String.trim(IO.gets("")) |> String.to_integer()
  end

  def run do
    welcome()
    name = ask_name()
    class = ask_class()
    level = ask_level()
    character = %{class: class, level: level, name: name}
    IO.inspect(character, label: "Your character")
  end
end
