Учебный план для курсов, проводимых MLUG
====

Так как курсов у нас несколько, они разбиты по поддиректориям:

- base --- компьютерная грамотность (базовая и углублённая)
- cxx --- C++
- python --- Python (ВНЕЗАПНО!)
- kicad --- KiCAD (ВНЕЗАПНО!)
- webdesign --- HTML, CSS, JavaScript и серверные технологии (кто ещё внезапнее?)

Структура:
====

Чтобы сохранить единообразие, стоит придерживаться одной структуры. В каждой поддиректории есть файл с названием оной и расширением .tex (например, base/base.tex, base/OS/OS.tex). Эти файлы представляют собой различные части и главы и состоят исключительно из объявления части/главы и 
нескольких \input{тема}. Части располагаются на уровень выше глав. Стоит сохранить такую структуру и для остальных частей (программирование, KiCAD), ибо она очень удобна, т.к. материал не смешивается в одной куче. Сами материалы располагаются в файлах поддиректорий (base/Software/DE.tex, base/OS/Structure.tex).


Как скомпилить:
====

Для начала стоит убедиться, что установлен дистрибутив TeX Live и extra пакеты (а лучше вообще весь, лишним не будет). Далее т. к. мы хотим получить PDF, используем pdflatex вместо latex

    $ pdflatex study-plan.tex # компилируем, процесс долгий. В результате не будет библиографии и оглавления

    $ bibtex study-plan.aux # строим базу с библиографией

    $ pdflatex study-plan.tex # рекомпилируем, теперь в документе появится оглавление и библиография, но первый пункт оглавления будет заменён на какую-то хрень.

Рекомпиляция намного быстрее

    $ pdflatex study-plan.tex # ещё раз рекомпилируем, теперь оглавление в порядке

Можно также воспользоваться скриптом compile.sh.


Перед тем, как делать коммит:
====

В процессе компиляции создаётся много файлов, которые не имеют непосредственного отношения к коду. Т. к. нам они не нужны (более того, они могут даже создать проблемы) их надо удалить:

    $ rm -f *.{aux,bbl,blg,log,pdf,toc,bak,out,dvi,ps,*~} \
    */*.{pdf,aux,bak,log,**~} \
    */*/*.{pdf,aux,bak,log,*~}

Если редактирование производилось в каком-нибудь IDE, могли создаваться и другие файлы, поэтому стоит проверить командой tree.

А вообще можно воспользоваться скриптом do-commit.sh, лежащем здесь же.