class Image < ActiveRecord::Base
	belongs_to :publication

	mount_uploader :url, PhotoUploader

	# FOTOS = File.join Rails.root, 'public', 'photo_store'
	# after_save :guardar_foto

	# def url=(file_data)
	# 	unless file_data.blank?
	# 		@file_data = file_data
	# 		self.url = file_data.original_filename.split('.').last.downcase
	# 	end
	# end

	# def photo_filename
	# 	File.join FOTOS, "#{id}.#{url}"
	# end

	# def photo_path
	# 	"/photo_store/#{id}.#{url}"
	# end

	# private

	# def guardar_foto
	# 	if @file_data
	# 		FileUtils.mkdir_p FOTOS
	# 		File.open(photo_filename, 'wb') do |f|
	# 			f.write(@file_data.read)
	# 		end
	# 		@file_data = nil
	# 	end
	# end  	
end
