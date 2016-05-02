require 'barometer'

def findweather
puts 'enter location'
location = gets.chomp
Barometer.new(location).measure
end

weather = findweather
tomorrow = Time.now.strftime('%d').to_i + 1

today = Date.today.strftime("%d")

weather.forecast.each do |prediction|
	day = prediction.starts_at.day

	if day == tomorrow
		dayName = 'Tomorrow'
	else
		dayName = prediction.starts_at.strftime('%A')
	end

	puts dayName + " is going to be " + prediction.icon + " with a low of " + prediction.low.f.to_s + " and a high of " + prediction.high.f.to_s

end



