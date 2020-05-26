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
end
