require 'pry'
require 'HTTParty'

# chyld gave us a hint in class to attr_accessor :body
class Crawler	
	attr_accessor :url, :body, :words, :histogram	

	def initialize (url)
		@url = url
		# sets the default value of the histogram to 0 (counting mechanism)(takeaway)
		@historgram = Hash.new(0)

	    parse


	    words.each{|w| @histogram[w.downcase] +=1}

	    #this is how you sort a hash (takeaway)
	    @histogram = @histogram.sort_by {|key, value| value}.reverse
	end

	def parse
    @body = HTTParty.get(@url)
    @words = @body.split
	end

	def word_count
	  @words.count 
	end

	def count_by_name(name)
	  # how you can take an array and make it a smaller array (predicate) (takeaway)
	  words.select{|w| w.downcase == name}.count
	end

	def obama
	  count_by_name('obama')
	end

	def romney
	  count_by_name('romney')
	end
end

# puts = "which url do you want to crawl?"
# url = gets.chomp

# c1 = Crawler.new(url)


binding.pry