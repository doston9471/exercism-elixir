defmodule NameBadge do
  @owner_dep "OWNER"
  @separator " - "

  def print(id, name, department) do
    id_part = if id, do: "[#{id}]"
    dep_part = if department, do: String.upcase(department), else: @owner_dep
  
    [id_part, name, dep_part] |> Enum.reject(&is_nil/1) |> Enum.join(@separator)
  end

  # 2nd option (solution)

  # def print(nil, name, department) when is_nil(department) do
  #   "#{name} - OWNER"
  # end

  # def print(nil, name, department) do
  #   "#{name} - #{String.upcase(department)}"
  # end

  # def print(id, name, nil) do
  #   "[#{id}] - #{name} - OWNER"
  # end

  # def print(id, name, department) do
  #   "[#{id}] - #{name} - #{String.upcase(department)}"
  # end
end
