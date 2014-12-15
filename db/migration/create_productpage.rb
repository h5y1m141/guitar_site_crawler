require "active_record"
require "yaml"
config = YAML.load_file('config/database.yml')

ActiveRecord::Base.establish_connection(config["development"])
ActiveRecord::Migration.create_table :productpages do |t|
  t.string :detail
  
  t.timestamps
end
