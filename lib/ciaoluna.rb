#!/usr/bin/env ruby

require 'italian/ruby'

module Ciaoluna
  private

  def stampa_aiuto
    stampa 'usage: ciaoluna'
    stampa '       ciaoluna <integer>'
    stampa '       ciaoluna <command>'
    stampa
    stampa 'Just `ciaoluna` plays the game with three rounds.'
    stampa
    stampa '`ciaoluna <integer>` plays the game with the specified number of rounds.'
    stampa
    stampa '`ciaoluna <command>` accepts one of the following commands:'
    stampa '   help | -h | --help   Prints this help'
    stampa '   accents              Prints the Italian accents, for copying into your answers'
    stampa '   progress             Prints your progress'
    exit 0
  end
  
  def stampa_accenti
    stampa 'Italian accents, for copying and pasting:'
    stampa 'ù è È é à'
    exit 0
  end
  
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
  
  def fornisci_una_frase(traduzioni)
    numero_di_traduzioni = traduzioni.length
    
    numero_a_caso = Random.new.rand(1..(numero_di_traduzioni - 1))
    
    stampa traduzioni[numero_a_caso][1]
    
    risposta = $stdin.gets.chomp
    
    if risposta == traduzioni[numero_a_caso][0]
      stampa 'Bravo!'
    else
      stampa "Non! La soluzione è: #{traduzioni[numero_a_caso][0]}"
    end
  end
  
  for partita in (1..numero_di_partite)
    fornisci_una_frase(TRADUZIONI)
  end
end
