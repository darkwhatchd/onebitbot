configure :test do
  set :database,
      adapter: 'postgresql',
      encoding: 'utf8',
      database: 'onebitbot_test',
      pool: 5,
      username: 'postgres',
      host: 'postgres'
end

configure :development do
  set :database,
      adapter: 'postgresql',
      encoding: 'utf8',
      database: 'onebitbot_development',
      pool: 5,
      username: 'postgres',
      host: 'postgres'
end

configure :production do
  db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///postgres/onebitbot_production')
<<<<<<< HEAD

  set :database, {
    adapter: 'postgresql',
    host: db.host,
=======
 
  set :database, {
    adapter:  'postgresql',
    host:     db.host,
>>>>>>> b20da557606d7268a67f9b531cb645d218c5a878
    username: db.user,
    password: db.password,
    database: db.path[1..-1],
    encoding: 'utf8'
  }
<<<<<<< HEAD
end
=======
end
>>>>>>> b20da557606d7268a67f9b531cb645d218c5a878
