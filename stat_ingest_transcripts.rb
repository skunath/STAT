require "active_record"

ActiveRecord::Base.establish_connection({
                                            :adapter => "mysql2",
                                            :host => "localhost",
                                            :username => "root",
                                            :encoding => 'utf8',
                                            :database => "saa"})

class Transcript < ActiveRecord::Base
end

base_dir = "/Users/skunath/Dropbox/SAA/transcript_data/txt"

rexp = /\[.*\]/

Dir.foreach(base_dir) do |item|
  next if item == '.' or item == '..'


  file_open = File.open(base_dir + "/" + item, "r:UTF-8").read()
  new_transcript = Transcript.new()
  new_transcript.source_file = item
  new_transcript.complete_raw = file_open.to_s
  puts file_open
  begin
    inner_text = rexp.match(file_open)[0][1..-2]
    new_transcript.raw_transcript = inner_text
  rescue
    puts "bad file..."
  end
  new_transcript.save
  puts "*" * 50
end