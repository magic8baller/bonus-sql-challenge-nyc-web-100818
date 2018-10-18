# Parse the CSV and seed the database here! Run 'ruby db/seed' to execute this code.
require "sqlite3"
require 'csv'

db = SQLite3::Database.new ":memory:"

rows = db.execute <<-SQL

CREATE TABLE daily_show_guests
    ID PRIMARY KEY INTEGER,
    YEAR INTEGER,
    GoogleKnowlege_Occupation TEXT,
    Show TEXT,
    Group TEXT,
    Raw_Guest_List TEXT;

