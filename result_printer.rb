# Печать результатов на экран. Он выводит состояние 
# игры на экран
class ResultPrinter
	def print_status(game) #передаем клас игры

		clear_screen

		puts "\nСлово: " + get_word_for_print(game.secret_word, game.good_letters)
		puts "Ошибки (#{game.errors}): #{game.bad_letters.join(", ")}"

		print_viselitsa(game.errors)

		if game.errors >= 7
			puts puts "Вы проиграли :("
		else
			if game.secret_word.uniq.size == game.good_letters.size
				puts "\n\nПоздравляем! Вы выиграли!\n\n"
			else
				puts "У вас осталось попыток: " + (7-game.errors).to_s
			end
		end
	end

	def get_word_for_print(secret_word, good_letters)
		result = ""

		for letter in secret_word do
			if good_letters.include? letter
				result += letter + " "
			else
				result += "__ "
			end
		end

		return result
	end

	def clear_screen
		system "clear"
	end
end