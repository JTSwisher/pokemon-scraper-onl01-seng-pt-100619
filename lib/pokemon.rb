class Pokemon
  
<<<<<<< HEAD
  attr_accessor :id, :name, :type, :db
  
=======
>>>>>>> 922d343c5a3c59d376a54785cbacf499b8da7b1e
  def initialize(id:, name:, type:, db:)
    @id = id 
    @name = name 
    @type = type 
    @db= db
  end 
  
<<<<<<< HEAD
  def self.save(name, type, db) 
   db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type)
  end 
  
  def self.find(id, db) 
    pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    Pokemon.new(id: pokemon[0], name: pokemon[1], type: pokemon[2], db: db)
  end 
=======
  def self.save(nmae, type, db) 
    sql = <<-SQL 
      INSERT INTO pokemon (name, type)
      VALUES (?,?)
    SQL
    
    db.execute(sql, self.name, self.type)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end 
  
  
>>>>>>> 922d343c5a3c59d376a54785cbacf499b8da7b1e
end
