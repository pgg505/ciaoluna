require 'italian/ruby'

# Proviamo il codice del modulo invece dal gemma.
require '../lib/ciaoluna.rb'

describe 'suddividi_le_traduzioni_usando_punti' do
  context 'con traduzioni in ordine casuale' do
    it 'suddivide le traduzioni usando punti' do
      traduzioni = [
        ["Primo", "First", "3"],
        ["Secondo", "Second", "1"],
        ["Terzo", "Third", "2"]
      ]

      soluzione = [
        ["Secondo", "Second", "1"],
        ["Terzo", "Third", "2"],
        ["Primo", "First", "3"]
      ]

      expect(Ciaoluna.suddividi_le_traduzioni_usando_punti(traduzioni)).to eq soluzione
    end
  end

  context 'con traduzioni in ordine casuale ma hanno il stesso numero di punti' do
    it 'suddivide le traduzioni usando punti' do
      traduzioni = [
        ["Primo", "First", "0"],
        ["Secondo", "Second", "0"],
        ["Terzo", "Third", "0"]
      ]

      soluzione = [
        ["Primo", "First", "0"],
        ["Secondo", "Second", "0"],
        ["Terzo", "Third", "0"]
      ]

      expect(Ciaoluna.suddividi_le_traduzioni_usando_punti(traduzioni)).to eq soluzione
    end
  end

  context 'con traduzioni in ordine casuale ma due hanno il stesso numero di punti' do
    it 'suddivide le traduzioni usando punti' do
      traduzioni = [
        ["Primo", "First", "0"],
        ["Secondo", "Second", "1"],
        ["Terzo", "Third", "0"]
      ]

      soluzione = [
        ["Primo", "First", "0"],
        ["Terzo", "Third", "0"],
        ["Secondo", "Second", "1"]
      ]

      expect(Ciaoluna.suddividi_le_traduzioni_usando_punti(traduzioni)).to eq soluzione
    end
  end
end
