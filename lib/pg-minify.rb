require 'pg-minify/schmoozer'
require 'pg-minify/version'

# :nodoc:
module PGMinify
  def self.minify(sql, options = {})
    minifier.minify(sql, options)
  end

  private

  def self.minifier
    spec = Gem::Specification.find_by_name('pg-minify')
    @minifier ||= PGMinify::Schmoozer.new(spec.gem_dir)
  end
end
