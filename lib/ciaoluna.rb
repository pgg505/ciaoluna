#!/usr/bin/env ruby

require 'italian/ruby'

module Ciaoluna
  def istanza.stampa_aiuto
    stampa 'usage: ciaoluna'
    stampa '       ciaoluna <integer>'
    stampa '       ciaoluna <command>'
    stampa
    stampa 'Just `ciaoluna` plays the game with three rounds.'
    stampa
    stampa '`ciaoluna <integer>` plays the game with the specified number of rounds.'
    stampa
    stampa '`ciaoluna <command>` accepts one of the following commands:'
    stampa '   help | -h | --help         Prints this help'
    stampa '   accents                    Prints the Italian accents, for copying into your answers'
    stampa '   version | -v | --version   Prints current ciaoluna version'
    exit 0
  end
  
  def istanza.stampa_accenti
    stampa 'Italian accents, for copying and pasting:'
    stampa 'ù è È é à'
    exit 0
  end

  # Legge il versione dal gemma da il gemspec e lo stampa.
  def istanza.stampa_versione
    gemspec = File.expand_path('../../ciaoluna.gemspec', __FILE__)
    linee_del_gemspec = IO.readlines(gemspec)
    linea_con_versione = linee_del_gemspec.seleziona { |linea| linea.include?('version') }[0]
    versione = linea_con_versione.dividi('\'')[1]
    stampa "ciaoluna version #{versione}"
    exit 0
  end
  
  def istanza.fornisci_una_frase(traduzioni)
    numero_di_traduzioni = traduzioni.length
    
    numero_a_caso = Random.new.rand(0..(numero_di_traduzioni - 1))
    
    stampa Rainbow(traduzioni[numero_a_caso][1]).yellow
    
    risposta = $stdin.gets.chomp
    
    if risposta == traduzioni[numero_a_caso][0]
      stampa Rainbow('Bravo!').green
    else
      stampa Rainbow("Non! La soluzione è: #{traduzioni[numero_a_caso][0]}").red
    end
  end

  def istanza.fornisci_frasi_multiple(numero_dei_frasi:, traduzioni:)
    stampa 'Vai!'
    numero_dei_frasi.volte { |_| stampa; fornisci_una_frase(traduzioni) }
    exit 0
  end

  def istanza.suddividi_le_traduzioni_usando_punti(traduzioni)
    traduzioni.ordina_per { |traduzione| traduzione[2] }
  end

  def istanza.handle_incorrect_answer(traduzioni, numero_a_caso)
    traduzioni[numero_a_caso][2] == '0'
  end
end
