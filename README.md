# Ciaoluna
A simple CLI tool for learning Italian phrases... written in Italian Ruby.

Still a work in progress. Will be packaged as a Ruby gem which will provide the `ciaoluna` command. All phrases are taken from my Collins Italian Dictionary (Fourth Edition 2014).

Check out https://github.com/Pluvie/italian-ruby for Italian Ruby.

## The gem's architecture
The gem defines a single module (Ciaoluna, defined in lib/ciaoluna.rb) and a single script (`ciaoluna`, defined in bin/ciaoluna).

All the functions in the Ciaoluna module are private i.e. you won't get anything from adding `require 'ciaoluna'` to your Ruby programs. The functions in this module are solely for driving the `ciaoluna` program. None of them make sense to be used independently from this, hence why they are private.

Unit tests for the functions defined within the Ciaoluna module exist under the spec directory.
