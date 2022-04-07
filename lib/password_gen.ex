defmodule PasswordGen do
  @moduledoc """
  Documentation for `PasswordGen`.
  """
  def sommaire do
    IO.puts("Bienvenue dans le générateur de mots de passes")
    IO.puts("1.Générer un mot de passe\n2.Obtenir un hash")
    choice = String.to_integer(IO.getn("\n>>Entrez votre choix\n>"))
    gen_passwd(choice)
    IO.puts("Nope")
  end

  defp gen_passwd(number) when number == 1 do
   IO.puts("Hello there")
  end

  defp gen_passwd(number) when number == 2 do
    IO.puts("Noice")
  end
end
