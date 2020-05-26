#!/usr/bin/env ruby

require 'ciaoluna'

# Un Array dove ogni articolo rappresenta una linea da il file CSV, "frasi.csv".
#   Ogni articolo è un altro Array contenendo tre articoli (uno per ogni CSV).
TRADUZIONI = IO.readlines('frasi.csv').mappa { |linea| linea.chomp.dividi(',') }

numero_dei_motivi = ARGV.length

stampa_aiuto if numero_dei_motivi > 1

# Default program if numero_dei_motivi == 0.


# At this point, there is 1 motivo.
stampa_aiuto if ['help', '-h', '--help'].include?(ARGV[0])

stampa_accenti if ARGV[0] == 'accents'


numero_di_partite = ARGV[0].to_i
