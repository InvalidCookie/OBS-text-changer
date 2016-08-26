
def load_data
	@array = []
	File.open('options.txt', 'r').each_line { |x|
	@array << x.chomp
	}
	@i = 0
	puts "--Data reloaded!"
end

count = 1
load_data

loop {
arr_leng = @array.length
ran_num = rand(arr_leng)

array_split = @array[ran_num].split('#')
quote = array_split[0].strip

open('stream.txt', 'w') { |x|
  x << quote
}

puts count.to_s + ': ' + quote + ' >> ' + array_split[1].strip + "\n\n"
sleep 120
@i += 1
count +=1
load_data if @i == 5
}