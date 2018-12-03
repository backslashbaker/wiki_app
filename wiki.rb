require 'sinatra'

def page_content(title)
	File.read("pages/#{title}.txt")
rescue Errno::ENOENT
	return nil
end


get '/' do
	erb :welcome
end
