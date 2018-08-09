require 'schmooze'

module PGMinify
  # :nodoc:
  class Schmoozer < Schmooze::Base
    dependencies pgminify: 'pg-minify'

    method :minify, 'pgminify'
  end
end
