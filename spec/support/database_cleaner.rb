require 'database_cleaner'
<<<<<<< HEAD

=======
 
>>>>>>> b20da557606d7268a67f9b531cb645d218c5a878
RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end
<<<<<<< HEAD

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
=======
 
  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end
 
  config.before(:each) do
    DatabaseCleaner.start
  end
 
  config.after(:each) do
    DatabaseCleaner.clean
  end
end
>>>>>>> b20da557606d7268a67f9b531cb645d218c5a878
