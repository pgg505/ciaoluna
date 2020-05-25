#!/usr/bin/env ruby

require 'italian/ruby'

# Un Array dove ogni articolo rappresenta una linea da il file CSV, "frasi.csv".
#   Ogni articolo è un altro Array contenendo tre articoli (uno per ogni CSV).
TRADUZIONI = IO.readlines('frasi.csv').mappa { |linea| linea.chomp.dividi(',') }

numero_di_traduzioni = TRADUZIONI.length

numero_a_caso = Random.new.rand(1..(numero_di_traduzioni - 1))

stampa TRADUZIONI[numero_a_caso][1]

risposta = gets.chomp

if risposta == TRADUZIONI[numero_a_caso][0]
  stampa 'Bravo!'
else
  stampa 'Non'
end
