# Lazycat Emacs

[AndyStewart](http://www.emacswiki.org/emacs/AndyStewart)'s Emacs, include [configs](https://github.com/manateelazycat/lazycat-emacs/tree/master/site-lisp/extensions) and [extensions](https://github.com/manateelazycat/lazycat-emacs/tree/master/site-lisp/extensions).

## Download Source Code
1. Download lazycat-emacs source code:
```
git clone https://github.com/manateelazycat/lazycat-emacs.git
```

2. Fetch all submodules in lazycat-emacs:
```
git submodule update --init --recursive

git submodule foreach git reset --hard

git submodule foreach git checkout master
```

## Install On Mac

1. Download emacs git code
```
$ git clone --depth 1 git://git.savannah.gnu.org/emacs.git
```

2. Install compile dependencies
```
$ brew install autoconf automake texinfo gnutls pkg-config libxml2 --debug --verbose
```

3. Compile emacs git
```
$ cd ./emacs && ./autogen.sh

$ export LDFLAGS="-L/usr/local/opt/libxml2/lib"
$ export CPPFLAGS="-I/usr/local/opt/libxml2/include"
$ export PKG_CONFIG_PATH="/usr/local/opt/libxml2/lib/pkgconfig"

$ ./configure && make && make install
```

4. Install in launcher:

    open -R nextstep/Emacs.app

    and dragging Emacs to the Applications folder.

5. Add config in ~/.emacs
```Elisp
(defun add-subdirs-to-load-path (dir)
  "Recursive add directories to `load-path'."
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
    (normal-top-level-add-subdirs-to-load-path)))
(add-subdirs-to-load-path "~/lazycat-emacs/site-lisp/")

(require 'init)
```

## Install On Arch Linux
1. Install emacs git version:
```
sudo pacman -S emacs-native-comp-git
```
2. Install Font:

```
sudo pacman -S wqy-microhei
```

3. Install dependency for from [EAF](https://github.com/manateelazycat/emacs-application-framework)

4. Build my config symlink to emacs directory:
```
sudo ln -s /home/username/lazycat-emacs/site-lisp /usr/share/emacs/lazycat
```

5. Copy site-start.el in emacs directory to start my config:
```
sudo cp /home/username/lazycat-emacs/site-start.el /usr/share/emacs/site-lisp/
```

6. Start emacs:
```
emacs
```

## Old extensions and configuration files.
In 2005, Emacs didn't have much advanced features, and it took me more than a decade to continuously improve Emacs.

Many extensions code that i wrote has been tossed, but I hope to still back up these unused code,
I hope some of the those old code snippets can help other Elisp hackers

You can find those old extensions and configuration files at [lazycat-emacs-time-machine](https://github.com/manateelazycat/lazycat-emacs-time-machine)

## License

Lazycat Emacs is licensed under [GPLv3](LICENSE).
