defmodule KitchenCalculator do
  def get_volume({_, volume}), do: volume

  def to_milliliter({:cup, volume}), do: {:milliliter, volume * 240}
  def to_milliliter({:fluid_ounce, volume}), do: {:milliliter, volume * 30}
  def to_milliliter({:teaspoon, volume}), do: {:milliliter, volume * 5}
  def to_milliliter({:tablespoon, volume}), do: {:milliliter, volume * 15}
  def to_milliliter({:milliliter, volume}), do: {:milliliter, volume}

  def from_milliliter({_, volume}, :milliliter), do: {:milliliter, volume}
  def from_milliliter({:milliliter, volume}, :cup), do: {:cup, volume / 240.0}
  def from_milliliter({:milliliter, volume}, :fluid_ounce), do: {:fluid_ounce, volume / 30.0}
  def from_milliliter({:milliliter, volume}, :teaspoon), do: {:teaspoon, volume / 5.0}
  def from_milliliter({:milliliter, volume}, :tablespoon), do: {:tablespoon, volume / 15.0}

  def convert(volume, unit) do
    milliliter_volume = to_milliliter(volume)
    from_milliliter(milliliter_volume, unit)
  end
end
