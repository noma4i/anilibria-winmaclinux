# Anilibria desktop client

Если Вы найдете ошибки или будут идеи по улучшению приложения то оформляйте ишью в этом репозитории или пишите [на этом сайте](http://anilibriadesktop.reformal.ru/), заранее спасибо.

## Системные требования:

**Windows** - Windows 7+, с графической картой поддерживающей OpenGL 2.0+  
**macOS** - macOS 10.13+  
**Linux** - дистрибутивы поддерживающие AppImage, сборка из исходников для остальных

## Откуда качать приложение?

Последнюю стабильную версию качаем [отсюда](https://github.com/anilibria/anilibria-winmaclinux/releases/latest).  
Все версии [здесь](https://github.com/anilibria/anilibria-winmaclinux/releases).

## Как установить и обновлять?

### Windows

Для установки просто качаем релиз и распаковываем, внутри запукаем файл Anilibria.exe.  
Для обновления выполняем ровно тоже действие, старую версию можно будет удалить или сохранить это остается на Ваше усмотрение.  
**Внимание! Для Window 7 при первом запуске приложения запуститься инсталлятор XAudio! Его надо установить и потом перезапустить приложение иначе видеоплеер работать не будет!**

### macOS

Для установки просто качаем релиз и монтируем диск, далее запускаем приложение AniLibria.  
Если у Вас отображается сообщение **Программу AniLibria не удалось открыть так как ее автор является неустановленным разработчиком** то воспользуйтесь следующей [инструкцией](https://support.apple.com/ru-ru/guide/mac-help/mh40616/mac).  
Для обновления выполняем ровно тоже действие, старую версию можно будет удалить или сохранить это остается на Ваше усмотрение.

### Linux

При использовании AppImage качаем его, далее добавляем возможность запуска (команда chmod +x) и запускаем.
Для обновления выполняем ровно тоже действие, старую версию можно будет удалить или сохранить это остается на Ваше усмотрение.  
Также ниже перечислены существующие пакеты для дистрибутивов.  
Информация для сборки из исходников находится в самом низу страницы.

## Пакеты для пакетных менеджеров Linux

### Arch linux
Установите пакет из aur [anilibria-winmaclinux-git](https://aur.archlinux.org/packages/anilibria-winmaclinux-git) своим любимым aur helper'ом. Например `yay`:

```console
$ yay -S anilibria-winmaclinux-git
```

## Сборка из исходников:

### Для сборки необходимо:
- Минимальная поддерживаемая версия Qt 5.12.3
- Поддержка C++11 (минимальные версии компиляторов MSVC15, GCC 4.8 или CLANG 3.3)
- Модули Qt - multimedia, webview, graphicaleffects
- Для сборки проекта используется qmake
- Для Windows сборки необходимо вначале собрать и установить [QtAV](https://github.com/wang-bin/QtAV)

### Linux

OpenSSL для Qt 5.12.3-5.12.5 **1.0.2**, Qt 5.12.5+ **1.1.1**  
GStreamer 1.0

```bash
cd src
qmake
sudo make install
```
Для более быстрой сборки рекомендуется использование флага `-jX`, где X - количество парраллельно работающих процессов компиляции. Как правило, указывается количество ядер/потоков, поддерживаемых Вашим процессором.
