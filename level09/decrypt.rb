file = File.open("token")
file_data = file.read
file.close
#delete '\n'
file_data = file_data.bytes.first file_data.bytes.size - 1

result = []

for i in 0..file_data.length - 1
	_new_char = file_data[i].ord - i
	print "#{_new_char < 0 ? (255 + _new_char).chr : _new_char.chr }"
end
print "\n"

