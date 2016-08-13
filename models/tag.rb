require('pg')
require_relative('../db/sql_runner.rb')

class Tag

attr_reader :id, :tag

def initialize( options )
  @id = options['id'].to_i,
  @tag = options['tag']
end

def self.delete_all()
  sql = "DELETE FROM tags"
  SqlRunner.run( sql )
end

end