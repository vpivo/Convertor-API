class Converter < ActiveRecord::Base
	before_save :get_converted_word, :add_metadata
	validates_presence_of :text
	attr_accessible :text


	def get_converted_word
		if self.text.length > 2
			self.convertered = clean_sentance
		end
	end

	def clean_sentance
		self.text.gsub(/\.\s*/, '. ').strip
	end

	def add_metadata
		self.metadata = show_changes
	end

	def show_changes
		self.text.gsub(/\.\s*\s+/, '*')
	end
end


