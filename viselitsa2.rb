require "./game.rb"
require "./result_printer.rb"

# printer = ResultPrinter.new
#В ResultPrinter нет метода initialize, 
# значит нет никакого особого конструктора
#и чтобы создать обьект нужно вызвать оператор .new

printer = ResultPrinter.new
#В ResultPrinter нет метода initialize, значит нет никакого особого конструктора
#и чтобы создать обьект нужно вызвать оператор .new

slovo = ARGV[0]

game = Game.new(slovo) #создаем екземпляр класа Game и передаем слово

while game.status == 0 do
	printer.print_status(game)
	game.ask_next_letter
end

printer.print_status(game)