# Файл, в котором хранится набор логики для вывода
# псевдографики игры в консоль

	def print_viselitsa(errors)
		case errors
			when 0 # нарисовать пустую виселицу
			puts "
		 _________
		 |/
		 |
		 |
		 |
		 |
		 |
		 |
		 |
		_|__________
		|          |
		"
			when  1 # +1 ошибка
			puts "
		 _________
		 |/
		 |      (_)
		 |
		 |
		 |
		 |
		 |
		 |
		_|__________
		|          |
		"
			when 2 # +2 ошибки
			puts "
		 _________
		 |/
		 |      (_)
		 |       |
		 |
		 |
		 |
		 |
		 |
		_|__________
		|          |
		"

			when 3 # +3 ошибки
			puts "
		 _________
		 |/
		 |      (_)
		 |       |_
		 |         \\
		 |
		 |
		 |
		 |
		_|__________
		|          |
		"

			when 4 
			puts "
		 _________
		 |/
		 |      (_)
		 |      _|_
		 |     /   \\
		 |
		 |
		 |
		 |
		_|__________
		|          |
		"

			when 5 
			puts "
		 _________
		 |/
		 |      (_)
		 |      _|_
		 |     / | \\
		 |       |
		 |
		 |
		 |
		_|__________
		|          |
		"

			when 6 
			puts "
		 _________
		 |/
		 |      (_)
		 |      _|_
		 |     / | \\
		 |       |
		 |      / \\
		 |     /   \\
		 |
		_|__________
		|          |
		"

			when 7 # +2 ошибки
			puts "
		 _________
		 |/      |
		 |      (_)
		 |      _|_
		 |     / | \\
		 |       |
		 |      / \\
		 |     /   \\
		 |
		_|__________
		|          |
		"


		end

	end