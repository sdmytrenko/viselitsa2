#Класс Game хранит в себе сам процесс игры с момента 
# загадывания игры до процесса отгадывания.
# Он должен хранить загаданное слово, текущее 
# состояние, к-во ошибок, наборы отгаданных 
# и неотгаданных букв
class Game
	def initialize(slovo) #мы передаем уже правильное слово
		@secret_word = get_secret_word(slovo) #слово разбивается на массив slovo.split("")
		@errors = 0
		@good_letters = []
		@bad_letters = []
		@status = 0 #Етим раньше занимался метод result
	end

	def get_secret_word(slovo)
		if (slovo == nil || slovo == "")
			abort "Вы не ввели слово для игры" #Прерываем цикл 
		end

		return slovo.downcase.split("")
	end

	def ask_next_letter #get_user_input + check_result
		#1. Спросить букву с консоли
		#2. Проверить есть ли она в слове
		puts "\nВведите следующую букву"

		bukva = ""

		while bukva == "" || bukva == " " do
			bukva = STDIN.gets.encode("UTF-8").chomp
		end

		next_step(bukva) # логика метода check_result
	end

	def next_step(bukva) #метод только меняет состояние обьекта game
		# Метод должен проверить наличие буквы в заданом слове
		# Или среди уже названных букв (good_letters, bad_letters)
		# Аналог метода check_result в первой версии "Виселица"
		if @status == -1 || @status == 1#проверка текущего статуса игры
			return
		end

		# if @good_letters.include?(bukva) || # проверка того, что буква была введена
		# 	@bad_letters.include?(bukva)

		# 	puts "Вы уже называли эту букву"
		# 	return 0
		# end

		if @good_letters.include?(bukva) || @bad_letters.include?(bukva)
			return
		end

		if secret_word.include?(bukva) # если проверки пройдены, то это свежая буква
			@good_letters << bukva

			if @good_letters.size == @secret_word.uniq.size
				@status = 1
			end
		else
			@bad_letters << bukva
			@errors += 1

			if @errors >=7
				@status = -1
			end
		end
	end






end