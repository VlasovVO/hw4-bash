# Домашнее задание HW4

### Файлы

`example.log` - Пример лог файла

`parselog.sh` - Скрипт анализа логов.

Что делает скрипт:

  - Выводет из лога события типа `WARNING`
  - Выводит из лога отправки события `SIGALRM`
  - Результат отправляет на почту. Почта захардкожена :suspect:

Запускается `sh parselog.sh example.log`
