# Ciaoluna
A simple CLI tool for learning Italian phrases... written in Italian Ruby.

Still a work in progress. Will be packaged as a Ruby gem which will provide the `ciaoluna` command. All phrases are taken from my Collins Italian Dictionary (Fourth Edition 2014).

Check out https://github.com/Pluvie/italian-ruby for Italian Ruby.

## The gem's architecture
The gem defines a single module (Ciaoluna, defined in `lib/ciaoluna.rb`) and a single script (`ciaoluna`, defined in `bin/ciaoluna`).

The Ciaoluna module exists purely to drive the `ciaoluna` script. The functions defined in the module are unlikely to be useful outside the context of the script. The module requires 'italian/ruby'.

Unit tests for some functions defined within the Ciaoluna module exist under the `spec` directory.
