#Крестики-нолики

##Описание
Крестики-нолики - небольшая игрушка на Ruby без взаимодействия с пользователем.  
Выбор компьютером клетки для заполнения полностью рандомен.  
Домашнее задание для курса __WebDeveloper__ на [course.by](http://course.by).

##Системные требования
Операционная система на базе Linux. Очистка экрана выполняется командой __clear__ (вызывается в game.rb), для запуска игры на windows необходимо заменить ее на __cls__.

##Структура
*	__lib__
	*	__field.rb__ реализует класс игрового поля
	*	__game.rb__ класс, содержащий логику игры
	*	__player.rb__ класс, описывающий игрока
	*	__turn.rb__ логика хода
*	__main.rb__ основной исполняемый файл