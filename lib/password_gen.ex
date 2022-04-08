defmodule PasswordGen do
  @moduledoc """
  Documentation for `PasswordGen`.
  """
  @letter for n <- ?a..?z, do: << n :: utf8 >>
  @capital for n <- ?A..?Z, do: << n :: utf8 >>
  @digit for n <- ?0..?9, do: << n :: utf8 >>
  @special for n <- [?@, ?#, ?$, ?%, ?[, ?], ?{, ?}], do: << n :: utf8 >>

  def sommaire do
    IO.puts("Bienvenue dans le générateur de mots de passes")
    IO.puts("1.Générer un mot de passe\n2.Obtenir un hash")
    choice = IO.gets("\n>>Entrez votre choix\n>")
    {choice, _nothing} = Integer.parse(choice)
    redirect(choice)
  end

  defp redirect(number) when number == 1 do
   choice = IO.gets(">Choisissez un niveau de sécurité : \n>1.Fort\n>2.Très Fort\n>")
   {choice, _nothing} = Integer.parse(choice)
   gen_passwd(choice)

  end
  defp redirect(number) when number == 2 do
    IO.puts("Noice")
  end
  defp redirect(number) when number > 2 do
    IO.puts("Cette possibilité n'existe pas")
  end

  defp gen_passwd(number) when number == 1 do
    Process.sleep(1000)
    IO.puts("Vous avez choisi le niveau fort")

  end
  defp gen_passwd(number) when number == 2 do
    Process.sleep(1000)
    IO.puts("Vous avez choisi le niveau très fort")
  end
end
