defmodule PasswordGen do
  @moduledoc """
  Documentation for `PasswordGen`.
  """
  @letter for n <- ?a..?z, do: << n :: utf8 >>
  def sommaire do
    IO.puts("Bienvenue dans le générateur de mots de passes")
    IO.puts("1.Générer un mot de passe\n2.Obtenir un hash")
    choice = IO.getn("\n>>Entrez votre choix\n>") |> String.trim()
    |> String.to_integer()
    redirect(choice)
  end

  defp redirect(number) when number == 1 do
   strong = IO.getn(">Choisissez un niveau de sécurité : \n>1.Faible\n>2.Moyen\n>3.Fort\n>4.SuperFort\n>") |> String.trim()
   |> String.to_integer()
   gen_passwd(strong)
  end
  defp redirect(number) when number == 2 do
    IO.puts("Noice")
  end
  defp redirect(number) when number > 2 do
    IO.puts("Cette possibilité n'existe pas")
  end

  defp gen_passwd(number) when number == 1 do
  IO.puts(@letter)
  end
  defp gen_passwd(number) when number == 2 do

  end
  defp gen_passwd(number) when number == 3 do

  end
  defp gen_passwd(number) when number == 4 do

  end
end
