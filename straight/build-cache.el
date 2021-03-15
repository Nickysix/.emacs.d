
:tanat

"27.1"

#s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data ("org-elpa" ("2021-03-14 08:18:04" nil (:local-repo nil :package "org-elpa" :type git)) "melpa" ("2021-03-14 08:18:04" nil (:type git :host github :repo "melpa/melpa" :build nil :package "melpa" :local-repo "melpa")) "gnu-elpa-mirror" ("2021-03-14 08:18:00" nil (:type git :host github :repo "emacs-straight/gnu-elpa-mirror" :build nil :package "gnu-elpa-mirror" :local-repo "gnu-elpa-mirror")) "el-get" ("2021-03-14 08:18:00" nil (:type git :host github :repo "dimitri/el-get" :build nil :files ("*.el" ("recipes" "recipes/el-get.rcp") "methods" "el-get-pkg.el") :flavor melpa :package "el-get" :local-repo "el-get")) "emacsmirror-mirror" ("2021-03-14 08:18:00" nil (:type git :host github :repo "emacs-straight/emacsmirror-mirror" :build nil :package "emacsmirror-mirror" :local-repo "emacsmirror-mirror")) "straight" ("2021-03-14 08:18:00" ("emacs") (:type git :host github :repo "raxod502/straight.el" :files ("straight*.el") :branch "master" :package "straight" :local-repo "straight.el")) "use-package" ("2021-03-14 08:18:00" ("emacs" "bind-key") (:type git :flavor melpa :files (:defaults (:exclude "bind-key.el" "bind-chord.el" "use-package-chords.el" "use-package-ensure-system-package.el") "use-package-pkg.el") :host github :repo "jwiegley/use-package" :package "use-package" :local-repo "use-package")) "bind-key" ("2021-03-14 08:18:00" nil (:flavor melpa :files ("bind-key.el" "bind-key-pkg.el") :package "bind-key" :local-repo "use-package" :type git :repo "jwiegley/use-package" :host github)) "vterm" ("2021-03-14 08:18:01" ("emacs") (:type git :flavor melpa :files ("*" (:exclude ".dir-locals.el" ".gitignore" ".clang-format" ".travis.yml") "vterm-pkg.el") :host github :repo "akermu/emacs-libvterm" :package "vterm" :local-repo "emacs-libvterm")) "org-plus-contrib" ("2021-03-14 08:18:02" nil (:type git :repo "https://code.orgmode.org/bzg/org-mode.git" :local-repo "org" :depth full :pre-build ("make" "autoloads" "EMACS=/usr/local/bin/emacs") :build (:not autoloads) :files (:defaults "lisp/*.el" ("etc/styles/" "etc/styles/*") "contrib/lisp/*.el") :includes org :package "org-plus-contrib")) "hyperbole" ("2021-03-14 08:18:02" ("emacs") (:type git :host github :repo "emacs-straight/hyperbole" :files ("*" (:exclude ".git")) :package "hyperbole" :local-repo "hyperbole")) "projectile" ("2021-03-14 08:18:03" ("emacs" "pkg-info") (:type git :flavor melpa :files ("projectile.el" "projectile-pkg.el") :host github :repo "bbatsov/projectile" :package "projectile" :local-repo "projectile")) "pkg-info" ("2021-03-14 08:18:03" ("epl") (:type git :flavor melpa :host github :repo "emacsorphanage/pkg-info" :package "pkg-info" :local-repo "pkg-info")) "epl" ("2021-03-14 08:18:03" ("cl-lib") (:type git :flavor melpa :host github :repo "cask/epl" :package "epl" :local-repo "epl")) "ido-vertical-mode" ("2021-03-14 08:18:03" ("emacs") (:type git :flavor melpa :host github :repo "creichert/ido-vertical-mode.el" :package "ido-vertical-mode" :local-repo "ido-vertical-mode.el")) "all-the-icons" ("2021-03-14 08:18:03" ("emacs") (:type git :flavor melpa :files (:defaults "data" "all-the-icons-pkg.el") :host github :repo "domtronn/all-the-icons.el" :package "all-the-icons" :local-repo "all-the-icons.el")) "general" ("2021-03-14 08:18:03" ("emacs" "cl-lib") (:type git :flavor melpa :host github :repo "noctuid/general.el" :package "general" :local-repo "general.el")) "god-mode" ("2021-03-14 08:18:03" ("emacs") (:type git :flavor melpa :host github :repo "emacsorphanage/god-mode" :package "god-mode" :local-repo "god-mode")) "neotree" ("2021-03-14 08:18:03" ("cl-lib") (:type git :flavor melpa :files (:defaults "icons" "neotree-pkg.el") :host github :repo "jaypei/emacs-neotree" :package "neotree" :local-repo "emacs-neotree")) "jazz-theme" ("2021-03-14 08:18:03" nil (:type git :flavor melpa :host github :repo "donderom/jazz-theme" :package "jazz-theme" :local-repo "jazz-theme")) "smex" ("2021-03-14 08:18:03" ("emacs") (:type git :flavor melpa :host github :repo "nonsequitur/smex" :package "smex" :local-repo "smex")) "amx" ("2021-03-14 08:18:03" ("emacs" "s") (:type git :flavor melpa :host github :repo "DarwinAwardWinner/amx" :package "amx" :local-repo "amx")) "s" ("2021-03-14 08:18:03" nil (:type git :flavor melpa :files ("s.el" "s-pkg.el") :host github :repo "magnars/s.el" :package "s" :local-repo "s.el")) "flx-ido" ("2021-03-14 08:18:03" ("flx" "cl-lib") (:type git :flavor melpa :files ("flx-ido.el" "flx-ido-pkg.el") :host github :repo "lewang/flx" :package "flx-ido" :local-repo "flx")) "flx" ("2021-03-14 08:18:03" ("cl-lib") (:flavor melpa :files ("flx.el" "flx-pkg.el") :package "flx" :local-repo "flx" :type git :repo "lewang/flx" :host github)) "ido-completing-read+" ("2021-03-14 08:18:03" ("emacs" "seq" "cl-lib" "memoize") (:type git :flavor melpa :files ("ido-completing-read+.el" "ido-completing-read+-pkg.el") :host github :repo "DarwinAwardWinner/ido-completing-read-plus" :package "ido-completing-read+" :local-repo "ido-completing-read-plus")) "memoize" ("2021-03-14 08:18:03" nil (:type git :flavor melpa :host github :repo "skeeto/emacs-memoize" :package "memoize" :local-repo "emacs-memoize")) "ido-grid-mode" ("2021-03-14 08:18:03" ("emacs") (:type git :flavor melpa :host github :repo "larkery/ido-grid-mode.el" :package "ido-grid-mode" :local-repo "ido-grid-mode.el")) "idomenu" ("2021-03-14 08:18:03" nil (:type git :flavor melpa :host github :repo "birkenfeld/idomenu" :package "idomenu" :local-repo "idomenu")) "imenu-anywhere" ("2021-03-14 08:18:03" ("cl-lib" "emacs") (:type git :flavor melpa :host github :repo "vspinu/imenu-anywhere" :package "imenu-anywhere" :local-repo "imenu-anywhere")) "selectrum" ("2021-03-14 08:18:03" ("emacs") (:type git :flavor melpa :host github :repo "raxod502/selectrum" :package "selectrum" :local-repo "selectrum")) "rainbow-delimiters" ("2021-03-14 08:18:05" nil (:type git :flavor melpa :host github :repo "Fanael/rainbow-delimiters" :package "rainbow-delimiters" :local-repo "rainbow-delimiters")) "dired-rainbow" ("2021-03-14 08:18:11" ("dash" "dired-hacks-utils") (:type git :flavor melpa :files ("dired-rainbow.el" "dired-rainbow-pkg.el") :host github :repo "Fuco1/dired-hacks" :package "dired-rainbow" :local-repo "dired-hacks")) "dash" ("2021-03-14 08:18:11" ("emacs") (:type git :flavor melpa :files ("dash.el" "dash.texi" "dash-pkg.el") :host github :repo "magnars/dash.el" :package "dash" :local-repo "dash.el")) "dired-hacks-utils" ("2021-03-14 08:18:11" ("dash") (:flavor melpa :files ("dired-hacks-utils.el" "dired-hacks-utils-pkg.el") :package "dired-hacks-utils" :local-repo "dired-hacks" :type git :repo "Fuco1/dired-hacks" :host github))))

#s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data ("straight" ((straight straight-x straight-autoloads) (autoload 'straight-get-recipe "straight" "Interactively select a recipe from one of the recipe repositories.
All recipe repositories in `straight-recipe-repositories' will
first be cloned. After the recipe is selected, it will be copied
to the kill ring. With a prefix argument, first prompt for a
recipe repository to search. Only that repository will be
cloned.

From Lisp code, SOURCES should be a subset of the symbols in
`straight-recipe-repositories'. Only those recipe repositories
are cloned and searched. If it is nil or omitted, then the value
of `straight-recipe-repositories' is used. If SOURCES is the
symbol `interactive', then the user is prompted to select a
recipe repository, and a list containing that recipe repository
is used for the value of SOURCES. ACTION may be `copy' (copy
recipe to the kill ring), `insert' (insert at point), or nil (no
action, just return it).

(fn &optional SOURCES ACTION)" t nil) (autoload 'straight-visit-package-website "straight" "Interactively select a recipe, and visit the package's website." t nil) (autoload 'straight-use-package "straight" "Register, clone, build, and activate a package and its dependencies.
This is the main entry point to the functionality of straight.el.

MELPA-STYLE-RECIPE is either a symbol naming a package, or a list
whose car is a symbol naming a package and whose cdr is a
property list containing e.g. `:type', `:local-repo', `:files',
and VC backend specific keywords.

First, the package recipe is registered with straight.el. If
NO-CLONE is a function, then it is called with two arguments: the
package name as a string, and a boolean value indicating whether
the local repository for the package is available. In that case,
the return value of the function is used as the value of NO-CLONE
instead. In any case, if NO-CLONE is non-nil, then processing
stops here.

Otherwise, the repository is cloned, if it is missing. If
NO-BUILD is a function, then it is called with one argument: the
package name as a string. In that case, the return value of the
function is used as the value of NO-BUILD instead. In any case,
if NO-BUILD is non-nil, then processing halts here. Otherwise,
the package is built and activated. Note that if the package
recipe has a nil `:build' entry, then NO-BUILD is ignored
and processing always stops before building and activation
occurs.

CAUSE is a string explaining the reason why
`straight-use-package' has been called. It is for internal use
only, and is used to construct progress messages. INTERACTIVE is
non-nil if the function has been called interactively. It is for
internal use only, and is used to determine whether to show a
hint about how to install the package permanently.

Return non-nil if package was actually installed, and nil
otherwise (this can only happen if NO-CLONE is non-nil).

(fn MELPA-STYLE-RECIPE &optional NO-CLONE NO-BUILD CAUSE INTERACTIVE)" t nil) (autoload 'straight-register-package "straight" "Register a package without cloning, building, or activating it.
This function is equivalent to calling `straight-use-package'
with a non-nil argument for NO-CLONE. It is provided for
convenience. MELPA-STYLE-RECIPE is as for
`straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload 'straight-use-package-no-build "straight" "Register and clone a package without building it.
This function is equivalent to calling `straight-use-package'
with nil for NO-CLONE but a non-nil argument for NO-BUILD. It is
provided for convenience. MELPA-STYLE-RECIPE is as for
`straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload 'straight-use-package-lazy "straight" "Register, build, and activate a package if it is already cloned.
This function is equivalent to calling `straight-use-package'
with symbol `lazy' for NO-CLONE. It is provided for convenience.
MELPA-STYLE-RECIPE is as for `straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload 'straight-use-recipes "straight" "Register a recipe repository using MELPA-STYLE-RECIPE.
This registers the recipe and builds it if it is already cloned.
Note that you probably want the recipe for a recipe repository to
include a nil `:build' property, to unconditionally
inhibit the build phase.

This function also adds the recipe repository to
`straight-recipe-repositories', at the end of the list.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload 'straight-override-recipe "straight" "Register MELPA-STYLE-RECIPE as a recipe override.
This puts it in `straight-recipe-overrides', depending on the
value of `straight-current-profile'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload 'straight-check-package "straight" "Rebuild a PACKAGE if it has been modified.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. See also `straight-rebuild-package' and
`straight-check-all'.

(fn PACKAGE)" t nil) (autoload 'straight-check-all "straight" "Rebuild any packages that have been modified.
See also `straight-rebuild-all' and `straight-check-package'.
This function should not be called during init." t nil) (autoload 'straight-rebuild-package "straight" "Rebuild a PACKAGE.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument RECURSIVE, rebuild
all dependencies as well. See also `straight-check-package' and
`straight-rebuild-all'.

(fn PACKAGE &optional RECURSIVE)" t nil) (autoload 'straight-rebuild-all "straight" "Rebuild all packages.
See also `straight-check-all' and `straight-rebuild-package'." t nil) (autoload 'straight-prune-build-cache "straight" "Prune the build cache.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build mtime information and any cached
autoloads discarded." nil nil) (autoload 'straight-prune-build-directory "straight" "Prune the build directory.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build directories deleted." nil nil) (autoload 'straight-prune-build "straight" "Prune the build cache and build directory.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build mtime information discarded and
their build directories deleted." t nil) (autoload 'straight-normalize-package "straight" "Normalize a PACKAGE's local repository to its recipe's configuration.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'.

(fn PACKAGE)" t nil) (autoload 'straight-normalize-all "straight" "Normalize all packages. See `straight-normalize-package'.
Return a list of recipes for packages that were not successfully
normalized. If multiple packages come from the same local
repository, only one is normalized.

PREDICATE, if provided, filters the packages that are normalized.
It is called with the package name as a string, and should return
non-nil if the package should actually be normalized.

(fn &optional PREDICATE)" t nil) (autoload 'straight-fetch-package "straight" "Try to fetch a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
fetch not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload 'straight-fetch-package-and-deps "straight" "Try to fetch a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are fetched
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
fetch not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload 'straight-fetch-all "straight" "Try to fetch all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, fetch not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
fetched. If multiple packages come from the same local
repository, only one is fetched.

PREDICATE, if provided, filters the packages that are fetched. It
is called with the package name as a string, and should return
non-nil if the package should actually be fetched.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload 'straight-merge-package "straight" "Try to merge a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
merge not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload 'straight-merge-package-and-deps "straight" "Try to merge a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are merged
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
merge not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload 'straight-merge-all "straight" "Try to merge all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, merge not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
merged. If multiple packages come from the same local
repository, only one is merged.

PREDICATE, if provided, filters the packages that are merged. It
is called with the package name as a string, and should return
non-nil if the package should actually be merged.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload 'straight-pull-package "straight" "Try to pull a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM, pull
not just from primary remote but also from upstream (for forked
packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload 'straight-pull-package-and-deps "straight" "Try to pull a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are pulled
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
pull not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload 'straight-pull-all "straight" "Try to pull all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, pull not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
pulled. If multiple packages come from the same local repository,
only one is pulled.

PREDICATE, if provided, filters the packages that are pulled. It
is called with the package name as a string, and should return
non-nil if the package should actually be pulled.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload 'straight-push-package "straight" "Push a PACKAGE to its primary remote, if necessary.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'.

(fn PACKAGE)" t nil) (autoload 'straight-push-all "straight" "Try to push all packages to their primary remotes.

Return a list of recipes for packages that were not successfully
pushed. If multiple packages come from the same local repository,
only one is pushed.

PREDICATE, if provided, filters the packages that are normalized.
It is called with the package name as a string, and should return
non-nil if the package should actually be normalized.

(fn &optional PREDICATE)" t nil) (autoload 'straight-freeze-versions "straight" "Write version lockfiles for currently activated packages.
This implies first pushing all packages that have unpushed local
changes. If the package management system has been used since the
last time the init-file was reloaded, offer to fix the situation
by reloading the init-file again. If FORCE is
non-nil (interactively, if a prefix argument is provided), skip
all checks and write the lockfile anyway.

Currently, writing version lockfiles requires cloning all lazily
installed packages. Hopefully, this inconvenient requirement will
be removed in the future.

Multiple lockfiles may be written (one for each profile),
according to the value of `straight-profiles'.

(fn &optional FORCE)" t nil) (autoload 'straight-thaw-versions "straight" "Read version lockfiles and restore package versions to those listed." t nil) (autoload 'straight-bug-report "straight" "Test straight.el in a clean environment.
ARGS may be any of the following keywords and their respective values:
  - :pre-bootstrap (Form)...
      Forms evaluated before bootstrapping straight.el
      e.g. (setq straight-repository-branch \"develop\")
      Note this example is already in the default bootstrapping code.

  - :post-bootstrap (Form)...
      Forms evaluated in the testing environment after boostrapping.
      e.g. (straight-use-package '(example :type git :host github))

  - :interactive Boolean
      If nil, the subprocess will immediately exit after the test.
      Output will be printed to `straight-bug-report--process-buffer'
      Otherwise, the subprocess will be interactive.

  - :preserve Boolean
      If non-nil, the test directory is left in the directory stored in the
      variable `temporary-file-directory'. Otherwise, it is
      immediately removed after the test is run.

  - :executable String
      Indicate the Emacs executable to launch.
      Defaults to the path of the current Emacs executable.

  - :raw Boolean
      If non-nil, the raw process output is sent to
      `straight-bug-report--process-buffer'. Otherwise, it is
      formatted as markdown for submitting as an issue.

  - :user-dir String
      If non-nil, the test is run with `user-emacs-directory' set to STRING.
      Otherwise, a temporary directory is created and used.
      Unless absolute, paths are expanded relative to the variable
      `temporary-file-directory'.

ARGS are accessible within the :pre/:post-bootsrap phases via the
locally bound plist, straight-bug-report-args.

(fn &rest ARGS)" nil t) (function-put 'straight-bug-report 'lisp-indent-function '0) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "straight" '("straight-"))) (defvar straight-x-pinned-packages nil "List of pinned packages.") (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "straight-x" '("straight-x-"))) (provide 'straight-autoloads)) "bind-key" ((bind-key-autoloads bind-key) (autoload 'bind-key "bind-key" "Bind KEY-NAME to COMMAND in KEYMAP (`global-map' if not passed).

KEY-NAME may be a vector, in which case it is passed straight to
`define-key'. Or it may be a string to be interpreted as
spelled-out keystrokes, e.g., \"C-c C-z\". See documentation of
`edmacro-mode' for details.

COMMAND must be an interactive function or lambda form.

KEYMAP, if present, should be a keymap variable or symbol.
For example:

  (bind-key \"M-h\" #'some-interactive-function my-mode-map)

  (bind-key \"M-h\" #'some-interactive-function 'my-mode-map)

If PREDICATE is non-nil, it is a form evaluated to determine when
a key should be bound. It must return non-nil in such cases.
Emacs can evaluate this form at any time that it does redisplay
or operates on menu data structures, so you should write it so it
can safely be called at any time.

(fn KEY-NAME COMMAND &optional KEYMAP PREDICATE)" nil t) (autoload 'unbind-key "bind-key" "Unbind the given KEY-NAME, within the KEYMAP (if specified).
See `bind-key' for more details.

(fn KEY-NAME &optional KEYMAP)" nil t) (autoload 'bind-key* "bind-key" "Similar to `bind-key', but overrides any mode-specific bindings.

(fn KEY-NAME COMMAND &optional PREDICATE)" nil t) (autoload 'bind-keys "bind-key" "Bind multiple keys at once.

Accepts keyword arguments:
:map MAP               - a keymap into which the keybindings should be
                         added
:prefix KEY            - prefix key for these bindings
:prefix-map MAP        - name of the prefix map that should be created
                         for these bindings
:prefix-docstring STR  - docstring for the prefix-map variable
:menu-name NAME        - optional menu string for prefix map
:filter FORM           - optional form to determine when bindings apply

The rest of the arguments are conses of keybinding string and a
function symbol (unquoted).

(fn &rest ARGS)" nil t) (autoload 'bind-keys* "bind-key" "

(fn &rest ARGS)" nil t) (autoload 'describe-personal-keybindings "bind-key" "Display all the personal keybindings defined by `bind-key'." t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bind-key" '("bind-key" "compare-keybindings" "get-binding-description" "override-global-m" "personal-keybindings"))) (provide 'bind-key-autoloads)) "use-package" ((use-package-diminish use-package-jump use-package-delight use-package-autoloads use-package-bind-key use-package-lint use-package-core use-package-ensure use-package) (autoload 'use-package-autoload-keymap "use-package-bind-key" "Loads PACKAGE and then binds the key sequence used to invoke
this function to KEYMAP-SYMBOL. It then simulates pressing the
same key sequence a again, so that the next key pressed is routed
to the newly loaded keymap.

This function supports use-package's :bind-keymap keyword. It
works by binding the given key sequence to an invocation of this
function for a particular keymap. The keymap is expected to be
defined by the package. In this way, loading the package is
deferred until the prefix key sequence is pressed.

(fn KEYMAP-SYMBOL PACKAGE OVERRIDE)" nil nil) (autoload 'use-package-normalize-binder "use-package-bind-key" "

(fn NAME KEYWORD ARGS)" nil nil) (defalias 'use-package-normalize/:bind 'use-package-normalize-binder) (defalias 'use-package-normalize/:bind* 'use-package-normalize-binder) (defalias 'use-package-autoloads/:bind 'use-package-autoloads-mode) (defalias 'use-package-autoloads/:bind* 'use-package-autoloads-mode) (autoload 'use-package-handler/:bind "use-package-bind-key" "

(fn NAME KEYWORD ARGS REST STATE &optional BIND-MACRO)" nil nil) (defalias 'use-package-normalize/:bind-keymap 'use-package-normalize-binder) (defalias 'use-package-normalize/:bind-keymap* 'use-package-normalize-binder) (autoload 'use-package-handler/:bind-keymap "use-package-bind-key" "

(fn NAME KEYWORD ARGS REST STATE &optional OVERRIDE)" nil nil) (autoload 'use-package-handler/:bind-keymap* "use-package-bind-key" "

(fn NAME KEYWORD ARG REST STATE)" nil nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package-bind-key" '("use-package-handler/:bind*"))) (autoload 'use-package "use-package-core" "Declare an Emacs package by specifying a group of configuration options.

For full documentation, please see the README file that came with
this file.  Usage:

  (use-package package-name
     [:keyword [option]]...)

:init            Code to run before PACKAGE-NAME has been loaded.
:config          Code to run after PACKAGE-NAME has been loaded.  Note that
                 if loading is deferred for any reason, this code does not
                 execute until the lazy load has occurred.
:preface         Code to be run before everything except `:disabled'; this
                 can be used to define functions for use in `:if', or that
                 should be seen by the byte-compiler.

:mode            Form to be added to `auto-mode-alist'.
:magic           Form to be added to `magic-mode-alist'.
:magic-fallback  Form to be added to `magic-fallback-mode-alist'.
:interpreter     Form to be added to `interpreter-mode-alist'.

:commands        Define autoloads for commands that will be defined by the
                 package.  This is useful if the package is being lazily
                 loaded, and you wish to conditionally call functions in your
                 `:init' block that are defined in the package.
:hook            Specify hook(s) to attach this package to.

:bind            Bind keys, and define autoloads for the bound commands.
:bind*           Bind keys, and define autoloads for the bound commands,
                 *overriding all minor mode bindings*.
:bind-keymap     Bind a key prefix to an auto-loaded keymap defined in the
                 package.  This is like `:bind', but for keymaps.
:bind-keymap*    Like `:bind-keymap', but overrides all minor mode bindings

:defer           Defer loading of a package -- this is implied when using
                 `:commands', `:bind', `:bind*', `:mode', `:magic', `:hook',
                 `:magic-fallback', or `:interpreter'.  This can be an integer,
                 to force loading after N seconds of idle time, if the package
                 has not already been loaded.
:after           Delay the use-package declaration until after the named modules
                 have loaded. Once load, it will be as though the use-package
                 declaration (without `:after') had been seen at that moment.
:demand          Prevent the automatic deferred loading introduced by constructs
                 such as `:bind' (see `:defer' for the complete list).

:if EXPR         Initialize and load only if EXPR evaluates to a non-nil value.
:disabled        The package is ignored completely if this keyword is present.
:defines         Declare certain variables to silence the byte-compiler.
:functions       Declare certain functions to silence the byte-compiler.
:load-path       Add to the `load-path' before attempting to load the package.
:diminish        Support for diminish.el (if installed).
:delight         Support for delight.el (if installed).
:custom          Call `custom-set' or `set-default' with each variable
                 definition without modifying the Emacs `custom-file'.
                 (compare with `custom-set-variables').
:custom-face     Call `customize-set-faces' with each face definition.
:ensure          Loads the package using package.el if necessary.
:pin             Pin the package to an archive.

(fn NAME &rest ARGS)" nil t) (function-put 'use-package 'lisp-indent-function '1) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package-core" '("use-package-"))) (autoload 'use-package-normalize/:delight "use-package-delight" "Normalize arguments to delight.

(fn NAME KEYWORD ARGS)" nil nil) (autoload 'use-package-handler/:delight "use-package-delight" "

(fn NAME KEYWORD ARGS REST STATE)" nil nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package-delight" '("use-package-normalize-delight"))) (autoload 'use-package-normalize/:diminish "use-package-diminish" "

(fn NAME KEYWORD ARGS)" nil nil) (autoload 'use-package-handler/:diminish "use-package-diminish" "

(fn NAME KEYWORD ARG REST STATE)" nil nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package-diminish" '("use-package-normalize-diminish"))) (autoload 'use-package-normalize/:ensure "use-package-ensure" "

(fn NAME KEYWORD ARGS)" nil nil) (autoload 'use-package-handler/:ensure "use-package-ensure" "

(fn NAME KEYWORD ENSURE REST STATE)" nil nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package-ensure" '("use-package-"))) (autoload 'use-package-jump-to-package-form "use-package-jump" "Attempt to find and jump to the `use-package' form that loaded
PACKAGE. This will only find the form if that form actually
required PACKAGE. If PACKAGE was previously required then this
function will jump to the file that originally required PACKAGE
instead.

(fn PACKAGE)" t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package-jump" '("use-package-find-require"))) (autoload 'use-package-lint "use-package-lint" "Check for errors in use-package declarations.
For example, if the module's `:if' condition is met, but even
with the specified `:load-path' the module cannot be found." t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "use-package-lint" '("use-package-lint-declaration"))) (provide 'use-package-autoloads)) "vterm" ((vterm vterm-autoloads) (autoload 'vterm-module-compile "vterm" "Compile vterm-module." t nil) (autoload 'vterm-next-error-function "vterm" "Advance to the next error message and visit the file where the error was.
This is the value of `next-error-function' in Compilation
buffers.  Prefix arg N says how many error messages to move
forwards (or backwards, if negative).

Optional argument RESET clears all the errors.

(fn N &optional RESET)" t nil) (autoload 'vterm "vterm" "Create an interactive Vterm buffer.
Start a new Vterm session, or switch to an already active
session.  Return the buffer selected (or created).

With a nonnumeric prefix arg, create a new session.

With a string prefix arg, create a new session with arg as buffer name.

With a numeric prefix arg (as in `C-u 42 M-x vterm RET'), switch
to the session with that number, or create it if it doesn't
already exist.

The buffer name used for Vterm sessions is determined by the
value of `vterm-buffer-name'.

(fn &optional ARG)" t nil) (autoload 'vterm-other-window "vterm" "Create an interactive Vterm buffer in another window.
Start a new Vterm session, or switch to an already active
session.  Return the buffer selected (or created).

With a nonnumeric prefix arg, create a new session.

With a string prefix arg, create a new session with arg as buffer name.

With a numeric prefix arg (as in `C-u 42 M-x vterm RET'), switch
to the session with that number, or create it if it doesn't
already exist.

The buffer name used for Vterm sessions is determined by the
value of `vterm-buffer-name'.

(fn &optional ARG)" t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "vterm" '("vterm-"))) (provide 'vterm-autoloads)) "org-plus-contrib" ((org-notify ob-ocaml ol ox-rss org-install ob-lua ob-vala ob-ditaa ox-groff org-contribdir org-id org-timer org-mac-link ox-beamer org-attach-git ox-publish ob-dot org-num ob-ruby ox org-protocol ol-man org-plot ob-hledger org-expiry ob-sql org-mobile ob-lilypond ob-sqlite org-contacts ob-latex ox-icalendar ol-mew org-clock ob-core ob-eukleides org-attach-embedded-images ob-smiles ox-deck ob-julia org-link-edit org-learn ob-redis ol-bookmark org-velocity ob-csharp ol-bbdb org-collector org-depend org-mairix org-element ob-forth ob-stata org-inlinetask ob-plantuml ob-lob ob-calc ob-picolisp org-habit org-feed org-refile ob-css ox-md ox-freemind org-lint org-duration ob-stan org-annotate-file ob-coq org-eldoc ob-python ol-gnus org-loaddefs ox-html org-keys org-mac-iCal org-registry ol-rmail ob-io ob-shell org-macs ob-ebnf ob-clojure org-passwords ob-clojure-literate ob-mscgen orgtbl-sqlinsert ob-eval ob-sass org-crypt ob-abc org-macro org-effectiveness ob-R ob-fomus ob-fortran org-attach ob-C ol-bibtex ob-awk org-sudoku org-wikinodes org-colview org-panel org-version org-goto org-indent org-secretary org-screenshot ob-mathomatic ol-eww ol-vm ob-java ox-texinfo ob-table ox-taskjuggler ob-gnuplot ob-octave ob-shen ob-scheme ob-ledger org-datetree org-mouse ob org org-choose ob-exp ol-eshell ol-irc ob-ref org-tempo org-entities org-src ob-php ol-w3m ob-haskell ob-asymptote org-list org-table ob-makefile ob-js ox-man ob-org ox-s5 ob-lisp org-static-mathjax org-compat ox-extra org-screen org-eval ox-latex ob-emacs-lisp org-checklist ob-groovy org-interactive-query ox-bibtex org-license org-invoice ob-tcl ox-org ob-eshell ob-matlab ox-koma-letter ol-git-link org-archive ob-J ob-spice org-toc ob-arduino org-faces ob-mathematica ox-odt org-eval-light org-pcomplete org-capture org-footnote ob-sed ob-vbnet org-ctags org-agenda ol-info ol-notmuch ob-tangle ob-oz ox-ascii org-track ob-comint ob-processing ol-mhe ol-elisp-symbol ob-perl ob-sclang ox-confluence org-bibtex-extras ol-wl ob-screen ol-docview ob-maxima)) "hyperbole" ((hibtypes hbut hui-mini hyrolo-menu hmouse-mod hvm hmoccur hui set hyrolo-logic hargs hib-doc-id hinit hsmail hib-kbd hactypes hversion hvar hui-menu hrmail hib-debbugs hui-window hact hui-select hpath hbdata hywconfig hui-mouse hgnus hyrolo-demo hmouse-tag hmail hmh hmouse-key hypb htz hmouse-sh hmouse-drv hsys-www hui-dired-sidebar hib-social hsettings hhist hyperbole-autoloads hui-em-but hbmap hsys-org hload-path hui-treemacs hui-jmenu hmouse-info hyperbole hycontrol hyrolo) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hact" '("act" "defact" "hact" "hrule:action" "htype:create" "sym"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hactypes" '("annot-bib" "completion" "display-" "eval-elisp" "exec-" "function-in-buffer" "hyp-" "link-to-" "man-show" "rfc-toc" "text-toc"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hargs" '("hargs:"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hbdata" '("hbdata:"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hbmap" '("hbmap:"))) (autoload 'hbut:modify-syntax "hbut" "Modify syntactic character pairs in hbut:syntax-table and help-mode-syntax-table for use with implicit button activations." nil nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hbut" '("defib" "ebut:" "hattr:summarize" "hbut:" "ibtype:create" "ibut:" "map-"))) (autoload 'Gnus-init "hgnus" "Initialize Hyperbole support for Gnus Usenet news reading." t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hgnus" '("lnews:to" "rnews:"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hhist" '("*hhist*" "hhist:"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hib-debbugs" '("debbugs-" "smart-debbugs-gnu"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hib-doc-id" '("doc-id" "link-to-doc"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hib-kbd" '("kbd-key"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hib-social" '("git" "hibtypes-" "social-reference"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hibtypes" '("Info-node" "action" "annot-bib" "completion" "cscope" "ctags" "debugger-source" "dir-summary" "eli" "etags" "function-in-buffer" "glink" "gnus-push-button" "grep-msg" "hibtypes-path-line-and-col-regexp" "hlink" "hyp-" "id-cflow" "ilink" "ipython-stack-frame" "mail-address" "man-apropos" "markdown-" "parse-label-and-file" "pat" "rfc" "ripgrep-msg" "tex"))) (autoload 'hyperb:init-menubar "hinit" "Add a pulldown menu for Hyperbole after Emacs is initialized." t nil) (autoload 'hui-menu-remove "hinit" "Remove MENU-SYM menu from any menubars generated by optional KEYMAP or the `global-map'.

(fn MENU-SYM &optional KEYMAP)" nil t) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hinit" '("hyperb:check-dir-user"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hload-path" '("hyperb:dir"))) (autoload 'hmail:compose "hmail" "Compose mail with ADDRESS and evaluation of EXPR.
Optional SUBJECT and HELP message may also be given.

(fn ADDRESS EXPR &optional SUBJECT HELP)" t nil) (autoload 'hmail:msg-narrow "hmail" "Narrows buffer to displayable part of current message.
Its displayable part begins at optional MSG-START and ends at or before
MSG-END.

(fn &optional MSG-START MSG-END)" nil nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hmail" '("hmail:" "hnews:" "rmail:"))) (autoload 'Mh-init "hmh" "Initialize Hyperbole support for Mh mail reading." t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hmh" '("Mh-"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hmoccur" '("moccur"))) (autoload 'hkey-ace-window-setup "hmouse-drv" "Bind optional keyboard KEY and setup display of items in windows specified by short ids.

The ace-window package, (see \"https://elpa.gnu.org/packages/ace-window.html\"),
assigns short ids to each Emacs window and lets you jump to or
operate upqon a specific window by giving its letter.  Hyperbole
can insert an operation into ace-window that allows you to
display items such as dired or buffer menu items in a specific
window.

To enable this feature, in your Emacs initialization file after
Hyperbole is initialized, if you already have a key bound for
ace-window, then call:

 (hkey-ace-window-setup)

otherwise, choose a binding like {M-o} and send it to the same
function to bind it:

 (hkey-ace-window-setup \"\357\")

Then whenever point is on an item you want displayed in another
window, use {M-o i <id-of-window-to-display-item-in>} and watch the
magic happen.

(fn &optional KEY)" nil nil) (autoload 'hkey-drag "hmouse-drv" "Emulate Smart Mouse Key drag from the selected window to RELEASE-WINDOW, interactively chosen via ace-window.
The drag action determines the final selected window.

Optional prefix arg non-nil means emulate Assist Key rather than the
Action Key.

Works only when running under a window system, not from a dumb terminal.

(fn RELEASE-WINDOW)" t nil) (autoload 'hkey-drag-stay "hmouse-drv" "Emulate Smart Mouse Key drag from selected window to RELEASE-WINDOW, interactively chosen via ace-window.
After the drag, the selected window remains the same as it was before
the drag.

Optional prefix arg non-nil means emulate Assist Key rather than the
Action Key.

Works only when running under a window system, not from a dumb terminal.

(fn RELEASE-WINDOW)" nil nil) (autoload 'hkey-drag-item "hmouse-drv" "Emulate Smart Mouse Key drag from an item in a selected window to RELEASE-WINDOW, interactively chosen via ace-window.
RELEASE-WINDOW is left selected unless point is not on an item, in
which case, an error is signalled.

Optional prefix arg non-nil means emulate Assist Key rather than the
Action Key.

Works only when running under a window system, not from a dumb terminal.

(fn RELEASE-WINDOW)" t nil) (autoload 'hkey-drag-to "hmouse-drv" "Emulate Smart Mouse Key drag from a selected window to RELEASE-WINDOW, interactively chosen via ace-window.
If an item is dragged to RELEASE-WINDOW, then RELEASE-WINDOW is selected;
otherwise, the drag action determines the selected window.  If no drag
has taken place, then the selected window's buffer is displayed in
RELEASE-WINDOW and that becomes the selected window.

Optional prefix arg non-nil means emulate Assist Key rather than the
Action Key.

Works only when running under a window system, not from a dumb terminal.

(fn RELEASE-WINDOW)" t nil) (autoload 'hkey-replace "hmouse-drv" "Grab the buffer from RELEASE-WINDOW, interactively chosen via ace-window, and place it into the current window.
The selected window does not change.

(fn RELEASE-WINDOW)" t nil) (autoload 'hkey-swap "hmouse-drv" "Swap the buffer from the selected window with that of TO-WINDOW, interactively chosen via ace-window.
Leave TO-WINDOW as the selected window.

(fn TO-WINDOW)" t nil) (autoload 'hkey-throw "hmouse-drv" "Throw one of: the active (highlighted) region, a displayable item at point or the current buffer for display in RELEASE-WINDOW.
With optional prefix arg THROW-REGION-FLAG, throw the current region
even if not active.
The selected window does not change.

(fn RELEASE-WINDOW &optional THROW-REGION-FLAG)" t nil) (autoload 'hkey-buffer-to "hmouse-drv" "Use ace-window to choose a FROM-WINDOW whose buffer will also be displayed in the chosen TO-WINDOW.
The selected window does not change.

(fn FROM-WINDOW TO-WINDOW)" t nil) (autoload 'hkey-swap-buffers "hmouse-drv" "Use ace-window to choose a FROM-WINDOW whose buffer is swapped with the buffer of the chosen TO-WINDOW.
Leave TO-WINDOW as the selected window.

(fn FROM-WINDOW TO-WINDOW)" t nil) (autoload 'hmouse-click-to-drag "hmouse-drv" "Mouse click on start and end windows for use with `hkey-drag'.
Emulate Smart Mouse Key drag from start window to end window.
The drag action determines the final selected window." t nil) (autoload 'hmouse-click-to-drag-stay "hmouse-drv" "Mouse click on start and end windows for use with `hkey-drag-stay'.
Emulate Smart Mouse Key drag from start window to end window.
The selected window does not change." t nil) (autoload 'hmouse-click-to-drag-item "hmouse-drv" "Mouse click on start and end windows for use with `hkey-drag-item'.
Emulate {M-o i} from start window to end window.
After the drag, the end window is the selected window." t nil) (autoload 'hmouse-click-to-drag-to "hmouse-drv" "Mouse click on start and end windows for use with `hkey-drag-to'.
Emulate Smart Mouse Key drag from start window to end window.
After the drag, the end window is the selected window." t nil) (autoload 'hmouse-click-to-replace "hmouse-drv" "Mouse click on start and end windows for use with `hkey-replace'.
Replace the buffer in start window with the buffer in end window.
The selected window does not change." t nil) (autoload 'hmouse-click-to-swap "hmouse-drv" "Mouse click on start and end windows for use with `hkey-swap'.
Swap the buffer in start window with the buffer in end window.
Leave the end window selected." t nil) (autoload 'hmouse-click-to-throw "hmouse-drv" "Mouse click on start and end windows for use with `hkey-throw'.
Throw either a displayable item at start window's point or its current
buffer to the end window.  The selected window does not change." t nil) (autoload 'hkey-buffer-move-left "hmouse-drv" "Swap the current buffer with the one on its left, if any; otherwise, do nothing." t nil) (autoload 'hkey-buffer-move-right "hmouse-drv" "Swap the current buffer with the one on its right, if any; otherwise, do nothing." t nil) (autoload 'hkey-buffer-move-down "hmouse-drv" "Swap the current buffer with the one below it, if any; otherwise, do nothing." t nil) (autoload 'hkey-buffer-move-up "hmouse-drv" "Swap the current buffer with the one on above it, if any; otherwise, do nothing." t nil) (autoload 'hkey-help-hide "hmouse-drv" "Optionally KILL current buffer (default is bury) and quit WINDOW.
Restore frame to configuration prior to help buffer display.
Point must be in a help buffer.  See `hkey-quit-window' for additional
details.

(fn &optional KILL WINDOW)" t nil) (autoload 'hkey-help-show "hmouse-drv" "Save prior window configuration if BUFFER displays help.  Display BUFFER.

With optional second arg CURRENT-WINDOW non-nil, force display of buffer within
the current window.  By default, it is displayed according to the setting of
`hpath:display-where'.

(fn &optional BUFFER CURRENT-WINDOW)" nil nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hmouse-drv" '("action-" "assist-" "hkey-" "hmouse-" "mouse-drag-mode-line" "quit-window" "smart-scroll-"))) (autoload 'Info-read-index-item-name "hmouse-info" "Read an Info index item name with completion, prompting with PROMPT.
An index item name can have the form \"itemname\", referring to an index
item in the current Info file, or \"(filename)itemname\", referring to
an item in filename.  \"(filename)\" is a short format to go to
the Top node in filename.  Signal an error if a filename without an
index is given.

(fn PROMPT)" nil nil) (autoload 'smart-info "hmouse-info" "Walks through Info documentation networks using one key or mouse key.

If key is pressed within:
 (1) the first line of an Info Menu Entry or Cross Reference, the desired node
       is found;
 (2) the Up, Next, or Previous entries of a Node Header (first line),
       the desired node is found;
 (3) the File entry of a Node Header (first line),
       the `Top' node within that file is found;
 (4) at the end of the current node, the Next node is found (this will
       descend subtrees if the function `Info-global-next' is bound);
 (5) anywhere else (e.g. at the end of a line), the current node entry is
       scrolled up one windowful.

Returns t if key is pressed within an Info Node Header, Cross Reference,
or a Menu; otherwise returns nil." t nil) (autoload 'smart-info-assist "hmouse-info" "Walk through Info documentation networks using one assist-key or mouse assist-key.

If assist-key is pressed within:
 (1) the first line of an Info Menu Entry or Cross Reference, the desired node
       is found;
 (2) the Up, Next, or Previous entries of a Node Header (first line),
       the last node in the history list is found;
 (3) the File entry of a Node Header (first line),
       the `DIR' root-level node is found;
 (4) at the end of the current node, the Previous node is found (this will
       return from subtrees if the function 'Info-global-prev is bound);
 (5) anywhere else (e.g. at the end of a line), the current node entry is
       scrolled down one windowful.

Returns t if assist-key is pressed within an Info Node Header, Cross Reference,
or a Menu; otherwise returns nil." t nil) (autoload 'Info-handle-in-note "hmouse-info" "Follows an Info cross-reference.
If point is within the first line of an Info note (cross-reference), follows
cross-reference and returns t; otherwise returns nil." nil nil) (autoload 'Info-current-filename-sans-extension "hmouse-info" "Return the filename for the current Info node, if any, without directory or file extension.
This works regardless of the current buffer." nil nil) (autoload 'Info-menu-item-at-p "hmouse-info" "Return the name of the Info menu item at point, or nil if none." nil nil) (autoload 'Info-note-at-p "hmouse-info" "Return the name of the Info cross-reference note at point, or nil if none." nil nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hmouse-info" '("Info-"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hmouse-key" '("hmouse-"))) (defvar hmouse-mod-mode nil "Non-nil if Hmouse-Mod mode is enabled.
See the `hmouse-mod-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `hmouse-mod-mode'.") (custom-autoload 'hmouse-mod-mode "hmouse-mod" nil) (autoload 'hmouse-mod-mode "hmouse-mod" "Toggle use of the Smart Keys as Control- and Meta- modifiers (Hmouse Modifier mode).
With a prefix argument ARG, enable Hmouse Mod mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil.

If the Action Key is held down while alpha characters are typed,
they are translated into Control keys instead.  The Assist Key
translates them into Meta keys.  When both Smart Keys are depressed,
Control-Meta keys are produced.  The commands bound to the
characters produced are then run.

Hmouse Modifier mode is a global minor mode.  It does not affect
unmodified keys.  Normal Smart Key operations work with this
mode, if no other key is pressed while a Smart Key is depressed.

(fn &optional ARG)" t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hmouse-mod" '("hmouse-mod-"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hmouse-sh" '("hmouse-"))) (autoload 'smart-asm-at-tag-p "hmouse-tag" "Return assembly tag name that point is within, else nil.

(fn &optional NO-FLASH)" nil nil) (autoload 'smart-c++ "hmouse-tag" "Jumps to the definition of optional C++ IDENTIFIER or the one at point.
Optional second arg NEXT means jump to next matching C++ tag.

It assumes that its caller has already checked that the key was pressed in an
appropriate buffer and has moved the cursor to the selected buffer.

See the documentation for `c++-to-definition' for the behavior of this
function when the OO-Browser has been loaded.
Otherwise:
 (1) on a `#include' statement, the include file is displayed;
     Look for include file in directory lists `smart-c-cpp-include-path'
     and `smart-c-include-path';
 (2) on a C++ identifier, the identifier definition is displayed,
     assuming the identifier is found within an `etags' generated tag file
     in the current directory or any of its ancestor directories;
 (3) if `smart-c-use-lib-man' is non-nil, the C++ identifier is
     recognized as a library symbol, and a man page is found for the
     identifier, then the man page is displayed.

(fn &optional IDENTIFIER NEXT)" t nil) (autoload 'smart-c++-tag "hmouse-tag" "

(fn &optional IDENTIFIER NEXT)" nil nil) (autoload 'smart-c-at-tag-p "hmouse-tag" "Return C tag name that point is within, else nil.

(fn &optional NO-FLASH)" nil nil) (autoload 'smart-cc-mode-initialize "hmouse-tag" "Load and initialize cc-mode if possible and always return nil." nil nil) (autoload 'smart-fortran-at-tag-p "hmouse-tag" "Return Fortran tag name that point is within, else nil.

(fn &optional NO-FLASH)" nil nil) (autoload 'smart-java "hmouse-tag" "Jumps to the definition of optional Java IDENTIFIER or the one at point.
Optional second arg NEXT means jump to next matching Java tag.

It assumes that its caller has already checked that the key was pressed in an
appropriate buffer and has moved the cursor to the selected buffer.

See the documentation for `smart-java-oo-browser' for the behavior of this
function when the OO-Browser has been loaded.
Otherwise:
 (1) within a commented @see cross-reference, the referent is displayed;
 (2) on a `package' or `import' statement, the referent is displayed;
     Look for referent files in the directory list `smart-java-package-path';
 (3) on a Java identifier, the identifier definition is displayed,
     assuming the identifier is found within an `etags' generated tag file
     in the current directory or any of its ancestor directories.

(fn &optional IDENTIFIER NEXT)" t nil) (autoload 'smart-java-tag "hmouse-tag" "

(fn &optional IDENTIFIER NEXT)" nil nil) (autoload 'smart-java-at-tag-p "hmouse-tag" "Return Java tag name that point is within, else nil.

(fn &optional NO-FLASH)" nil nil) (autoload 'smart-javascript "hmouse-tag" "Jump to the definition of optional JavaScript IDENTIFIER or the one at point.
Optional second arg NEXT means jump to next matching JavaScript tag.

It assumes that its caller has already checked that the key was pressed in an
appropriate buffer and has moved the cursor to the selected buffer.

If on a JavaScript identifier, the identifier definition is displayed,
assuming the identifier is found within an `etags' generated tag file
in the current directory or any of its ancestor directories.

(fn &optional IDENTIFIER NEXT)" t nil) (autoload 'smart-javascript-at-tag-p "hmouse-tag" "Return JavaScript tag name that point is within, else nil.

(fn &optional NO-FLASH)" nil nil) (defconst smart-lisp-identifier-first-char-regexp "[-<>*a-zA-Z]" "Regexp matching the first character of a Lisp identifier, including the square brackets.") (defconst smart-lisp-identifier-chars "-_:/*+=%$&?!<>a-zA-Z0-9~^" "Regexp matching a valid character in any part of a Lisp identifier other than the first character.
Excludes character matching square brackets, so may be used with skip-characters-forward/backward.") (defconst smart-lisp-identifier (concat smart-lisp-identifier-first-char-regexp "[" smart-lisp-identifier-chars "]*") "Regexp matching a Lisp identifier.") (autoload 'smart-lisp-mode-p "hmouse-tag" "Return t if in a mode which use Lisp symbols." nil nil) (autoload 'smart-objc "hmouse-tag" "Jump to the definition of optional Objective-C IDENTIFIER or the one at point.
Optional second arg NEXT means jump to next matching Objective-C tag.

It assumes that its caller has already checked that the key was pressed in an
appropriate buffer and has moved the cursor to the selected buffer.

See the documentation for `smart-objc-oo-browser' for the behavior of this
function when the OO-Browser has been loaded.
Otherwise:
 (1) on a `#include' statement, the include file is displayed;
     Look for include file in directory lists `objc-cpp-include-path' and
     `objc-include-path';
 (2) on an Objective-C identifier, the identifier definition is displayed,
     assuming the identifier is found within an `etags' generated tag file
     in the current directory or any of its ancestor directories;
 (3) if `smart-c-use-lib-man' is non-nil, the Objective-C identifier is
     recognized as a library symbol, and a man page is found for the
     identifier, then the man page is displayed.

(fn &optional IDENTIFIER NEXT)" t nil) (autoload 'smart-objc-tag "hmouse-tag" "

(fn &optional IDENTIFIER NEXT)" nil nil) (autoload 'smart-python "hmouse-tag" "Jumps to the definition of optional Python IDENTIFIER or the one at point.
Optional second arg NEXT means jump to next matching Python tag.

It assumes that its caller has already checked that the key was pressed in an
appropriate buffer and has moved the cursor to the selected buffer.

See the documentation for `smart-python-jedi-to-definition-p' for the
behavior when the Jedi python identifier server is in use.

See the documentation for `smart-python-oo-browser' for the behavior of this
function when the OO-Browser has been loaded.

Otherwise, on a Python identifier, the identifier definition is displayed,
assuming the identifier is found within an `etags' generated tag file
in the current directory or any of its ancestor directories.

(fn &optional IDENTIFIER NEXT)" t nil) (autoload 'smart-python-tag "hmouse-tag" "

(fn &optional IDENTIFIER NEXT)" nil nil) (autoload 'smart-python-at-tag-p "hmouse-tag" "Return Python tag name that point is within, else nil.

(fn &optional NO-FLASH)" nil nil) (autoload 'smart-tags-file-path "hmouse-tag" "Expand relative FILE name by looking it up within appropriate tags files.
Return FILE unchanged if it exists relative to the current directory or
cannot be expanded via a tags file.

(fn FILE)" nil nil) (autoload 'smart-tags-file-list "hmouse-tag" "Return appropriate tag files list for optional CURR-DIR-OR-FILENAME or for `default-directory'.
Optional NAME-OF-TAGS-FILE is the literal filename (no directory) for which
to look.  If no tags file is found, an error is signaled.

(fn &optional CURR-DIR-OR-FILENAME NAME-OF-TAGS-FILE)" nil nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hmouse-tag" '("smart-"))) (autoload 'hpath:mswindows-to-posix "hpath" "Convert a recognizable MSWindows PATH to a Posix-style path or return the path unchanged.
If path begins with an MSWindows drive letter, prefix the converted path with the value of 'hpath:mswindows-mount-prefix'.

(fn PATH)" t nil) (autoload 'hpath:posix-to-mswindows "hpath" "Convert and return a Posix-style PATH to an MSWindows path or return the path unchanged.
If path begins with an optional mount prefix, 'hpath:mswindows-mount-prefix', followed by an MSWindows drive letter, remove the mount prefix.

(fn PATH)" t nil) (autoload 'hpath:substitute-posix-or-mswindows-at-point "hpath" "If point is within a recognizable Posix or MSWindows path, change the path to the other type of path." t nil) (autoload 'hpath:substitute-posix-or-mswindows "hpath" "Change a recognizable Posix or MSWindows PATH to the other type of path.

(fn PATH)" nil nil) (autoload 'hpath:cache-mswindows-mount-points "hpath" "Cache valid MSWindows mount points in 'directory-abbrev-alist' when under a non-MSWindows operating system, e.g. WSL.
Call this function manually if mount points change after Hyperbole is loaded." t nil) (autoload 'hpath:display-buffer "hpath" "Display and select BUFFER at optional DISPLAY-WHERE location or at `hpath:display-where'.
BUFFER must be a buffer or a buffer name.

See the documentation of `hpath:display-buffer-alist' for valid
values of DISPLAY-WHERE.  Return the window in which the buffer
is displayed or nil if not displayed because BUFFER is invalid.

(fn BUFFER &optional DISPLAY-WHERE)" t nil) (autoload 'hpath:find-file-urls-mode "hpath" "Toggle enabling/disabling the use of ftp and www Urls as arguments to `find-file' commands.
With optional prefix ARG, enable this feature if ARG is positive or turn it
off otherwise.

(fn &optional ARG)" t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hpath" '("hpath:"))) (autoload 'Rmail-init "hrmail" "Initialize Hyperbole support for Rmail mail reading." t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hrmail" '("Rmail-"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hsettings" '("hkey-always-display-menu" "hmouse-middle-flag" "hui:but-flash" "hyperbole-" "inhibit-hyperbole-messaging" "smart-scroll-proportional"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hsmail" '("mail-" "smail:"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hsys-org" '("hsys-org-" "inhibit-hsys-org" "org-"))) (autoload 'www-url-expand-file-name "hsys-www" "Expand PATH in DIR.  Return http urls unchanged.

(fn PATH &optional DIR)" nil nil) (autoload 'www-url-find-file-noselect "hsys-www" "Find PATH without selecting its buffer.  Handle http urls.

(fn PATH &rest ARGS)" nil nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hsys-www" '("www-url"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "htz" '("htz:"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hui" '("hui:"))) (autoload 'smart-dired-sidebar "hui-dired-sidebar" "Use a single key or mouse key to manipulate directory entries.

Invoked via a key press when in dired-sidebar-mode.  It assumes
that its caller has already checked that the key was pressed in
an appropriate buffer and has moved the cursor there.

If key is pressed:
 (1) within an entry line, the item is displayed for editing,
     normally in another window, or if it is a directory and
     `dired-sidebar-cycle-subtree-on-click' is t it will expand
     and collapse the entry
 (2) at the end of an entry line: invoke `action-key-eol-function',
     typically to scroll up proportionally, if an Action Key press; invoke
     `assist-key-eol-function', typically to scroll down proportionally,
     if an Asisst Key press;
 (3) on the first line of the buffer (other than the end of line),
     dired is run on the current directory of this dired-sidebar;
 (4) at the end of the first or last line of the buffer,
     this dired-sidebar invocation is hidden." t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hui-em-but" '("hproperty:"))) (autoload 'hui-menu-of-buffers "hui-jmenu" nil nil nil) (autoload 'hui-menu-screen-commands "hui-jmenu" "Popup a menu of buffers, frames, and windows, allowing user to jump to one." t nil) (autoload 'hui-menu-jump-to-buffer "hui-jmenu" "Popup a menu of existing buffers categorized by mode name.  Jump to chosen buffer." t nil) (autoload 'hui-menu-jump-to-frame "hui-jmenu" "Popup a menu of existing frames.  Jump to chosen frame." t nil) (autoload 'hui-menu-jump-to-window "hui-jmenu" "Popup a menu of existing frames.  Jump to chosen frame." t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hui-jmenu" '("hui-menu-"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hui-menu" '("hui-menu-" "hyperbole-" "infodock-hyperbole-menu"))) (autoload 'hyperbole "hui-mini" "Invoke the Hyperbole minibuffer menu when not already active.
\\[hyperbole] runs this.  Non-interactively, return t if a menu is
displayed by this call, else nil (e.g. when already in a Hyperbole
mini-menu).

Two optional arguments may be given to invoke alternative menus.
MENU (a symbol) specifies the menu to invoke from MENU-LIST, (a
Hyperbole menu list structure).  MENU defaults to 'hyperbole and MENU-LIST
to `hui:menus'.  See `hui:menus' definition for the format of the menu list
structure.

Two additional optional arguments may be given when documentation for
a menu item should be shown rather than display of a menu.  DOC-FLAG
non-nil means show documentation for any item that is selected by the
user.  HELP-STRING-FLAG non-nil means show only the first line of the
documentation, not the full text.

(fn &optional MENU MENU-LIST DOC-FLAG HELP-STRING-FLAG)" t nil) (autoload 'hyperbole-set-key "hui-mini" "Give KEY a global binding of Hyperbole minibuffer COMMAND keys.
KEY is a key sequence; noninteractively, it is a string or vector
of characters or event types, and non-ASCII characters with codes
above 127 (such as ISO Latin-1) can be included if you use a vector.

COMMAND is a string of the ASCII key presses used to invoke a
Hyperbole minibuffer command.

Note that if KEY has a local binding in the current buffer,
that local binding will continue to shadow any global binding
that you make with this function.

(fn KEY COMMAND)" t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hui-mini" '("hui" "hyperbole-minibuffer-menu"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hui-mouse" '("action-key-" "assist-key-" "first-line-p" "hkey-" "hmouse-" "last-line-p" "smart-"))) (autoload 'hui-select-at-p "hui-select" "Return non-nil if the character after optional POS (or point) matches a syntax entry in `hui-select-syntax-alist'.
The non-nil value returned is the function to call to select that syntactic unit.

(fn &optional POS)" t nil) (autoload 'hui-select-goto-matching-delimiter "hui-select" "Jump back and forth between the start and end delimiters of a thing." t nil) (autoload 'hui-select-initialize "hui-select" "Initialize the hui-select mode on a double click of the left mouse key.
Also, add language-specific syntax setups to aid in thing selection." t nil) (autoload 'hui-select-get-region "hui-select" "Return the region that `hui-select-thing' would select." nil nil) (autoload 'hui-select-thing "hui-select" "Select a region based on the syntax of the thing at point.
If invoked repeatedly, this selects bigger and bigger things.
If `hui-select-display-type' is non-nil and this is called
interactively, the type of selection is displayed in the minibuffer." t nil) (autoload 'hui-select-thing-with-mouse "hui-select" "Select a region based on the syntax of the character from a mouse click EVENT.
If the click occurs at the same point as the last click, select
the next larger syntactic structure.  If `hui-select-display-type' is
non-nil and this is called interactively, the type of selection is
displayed in the minibuffer.

(fn EVENT)" t nil) (autoload 'hui-select-goto-matching-tag "hui-select" "If in a major mode listed in `hui-select-markup-modes,' move point to the start of the tag paired with the closest tag that point is within or precedes.
Returns t if point is moved, else nil.
Signals an error if no tag is found following point or if the closing tag
does not have a `>' terminator character." t nil) (autoload 'hui-select-and-copy-thing "hui-select" "Copy the region surrounding the syntactical unit at point." t nil) (autoload 'hui-select-and-kill-thing "hui-select" "Kill the region surrounding the syntactical unit at point." t nil) (autoload 'hui-select-double-click-hook "hui-select" "Select a region based on the syntax of the character wherever the mouse is double-clicked.
If the double-click occurs at the same point as the last double-click, select
the next larger syntactic structure.  If `hui-select-display-type' is non-nil,
the type of selection is displayed in the minibuffer.

(fn EVENT CLICK-COUNT)" nil nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hui-select" '("hui-select-"))) (autoload 'smart-treemacs "hui-treemacs" "Use a single key or mouse key to manipulate directory entries.

Invoked via a key press when in treemacs-mode.  It assumes that its
caller has already checked that the key was pressed in an appropriate buffer
and has moved the cursor there.

If key is pressed:
 (1) on an entry icon, the treemacs TAB command is run to expand and
     collapse the entry;
 (2) elsewhere within an entry line, the item is displayed for editing,
     normally in another window;
 (3) at the end of an entry line: invoke `action-key-eol-function',
     typically to scroll up proportionally, if an Action Key press; invoke
     `assist-key-eol-function', typically to scroll down proportionally,
     if an Asisst Key press;
 (4) on the first line of the buffer (other than the end of line),
     dired is run on the current directory of this Treemacs;
 (5) at the end of the first or last line of the buffer,
     this Treemacs invocation is quit." t nil) (autoload 'smart-treemacs-modeline "hui-treemacs" "Toggle display of Treemacs file viewer based on Smart Action Key click on a modeline.

When pressed on the Treemacs buffer modeline or Treemacs is displaying
the default directory of the buffer modeline clicked upon, then
quit/hide the Treemacs window.  Otherwise, display the Treemacs window
with the default directory of the buffer modeline clicked upon.

Suitable for use as a value of `action-key-modeline-buffer-id-function'." nil nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hui-window" '("action-key-m" "assist-key-m" "hmouse-" "smart-"))) (autoload 'var:add-and-run-hook "hvar" "Add to HOOK (a symbol ending with -hook) HOOK-FUNCTION and then call HOOK-FUNCTION in every buffer with the matching major mode based on HOOK's name.

(fn HOOK HOOK-FUNCTION)" nil nil) (autoload 'var:append "hvar" "Append to value held by VAR-SYMBOL, LIST-TO-ADD.  Return new value.
If VAR-SYMBOL is unbound, it is set to LIST-TO-ADD.
Use to append to hook variables.  Store all values for later removal.
Do nothing when `inhibit-hyperbole-messaging' is non-nil.

(fn VAR-SYMBOL LIST-TO-ADD)" nil nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hvar" '("var:"))) (defvar hyperb:microsoft-os-p (memq system-type '(ms-windows windows-nt ms-dos win32)) "Non-nil iff Hyperbole is running under a Microsoft OS but not under Windows Subsystem for Linux (WSL).
Use `hyperb:wsl-os-p' to test if running under WSL.") (defvar hyperb:wsl-os-p (and (eq system-type 'gnu/linux) (executable-find "wsl.exe") t) "T iff Hyperbole is running under Microsoft Windows Subsystem for Linux (WSL).") (defvar hyperb:mouse-buttons (if (or (and hyperb:microsoft-os-p (not (memq window-system '(w32 w64 x)))) (memq window-system '(ns dps))) 2 3) "Number of live buttons available on the mouse.
Override this if the system-computed default is incorrect for your specific mouse.") (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hversion" '("hyperb:"))) (eval-after-load "buff-menu" '(define-key Buffer-menu-mode-map "@" 'hycontrol-windows-grid)) (eval-after-load "ibuffer" '(define-key ibuffer-mode-map "@" 'hycontrol-windows-grid)) (eval-after-load "dired" '(define-key dired-mode-map "@" 'hycontrol-windows-grid)) (autoload 'hycontrol-enable-frames-mode "hycontrol" "Globally enable HyControl Frames mode for rapid Emacs frame control.

  Interactively delete, jump to, move, replicate, and resize frames.
With optional numeric prefix ARG, move and resize by ARG (an
integer) units.  If ARG is < 1, it is set to 1.  If it is >
`hycontrol-maximum-units', it is set to `hycontrol-maximum-units'.

(fn &optional ARG)" t nil) (autoload 'hycontrol-enable-windows-mode "hycontrol" "Globally enable HyControl Windows mode for rapid Emacs window control.

Interactively delete, jump to, rebalance, resize, and split windows.
Optional non-negative numeric prefix ARG is used as the number of
units for commands issued while the mode is active.  If ARG is < 1, it
is set to 1.  If it is > `hycontrol-maximum-units', it is set to
`hycontrol-maximum-units'.

(fn &optional ARG)" t nil) (put 'hycontrol-frames-mode 'globalized-minor-mode t) (defvar hycontrol-frames-mode nil "Non-nil if Hycontrol-Frames mode is enabled.
See the `hycontrol-frames-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `hycontrol-frames-mode'.") (custom-autoload 'hycontrol-frames-mode "hycontrol" nil) (autoload 'hycontrol-frames-mode "hycontrol" "Toggle Hycontrol-Local-Frames mode in all buffers.
With prefix ARG, enable Hycontrol-Frames mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Hycontrol-Local-Frames mode is enabled in all buffers where
`(lambda nil (hycontrol-local-frames-mode 1))' would do it.
See `hycontrol-local-frames-mode' for more information on Hycontrol-Local-Frames mode.

(fn &optional ARG)" t nil) (put 'hycontrol-windows-mode 'globalized-minor-mode t) (defvar hycontrol-windows-mode nil "Non-nil if Hycontrol-Windows mode is enabled.
See the `hycontrol-windows-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `hycontrol-windows-mode'.") (custom-autoload 'hycontrol-windows-mode "hycontrol" nil) (autoload 'hycontrol-windows-mode "hycontrol" "Toggle Hycontrol-Local-Windows mode in all buffers.
With prefix ARG, enable Hycontrol-Windows mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Hycontrol-Local-Windows mode is enabled in all buffers where
`(lambda nil (hycontrol-local-windows-mode 1))' would do it.
See `hycontrol-local-windows-mode' for more information on Hycontrol-Local-Windows mode.

(fn &optional ARG)" t nil) (autoload 'hycontrol-frame-adjust-widths "hycontrol" "Cycle through different common width adjustments of a frame.
Widths are given in screen percentages by the list
`hycontrol-frame-widths' and typically go from widest to narrowest." t nil) (autoload 'hycontrol-frame-adjust-widths-full-height "hycontrol" "Cycle through different common widths adjustments of a frame after fixing its height full-screen.
Widths are given in screen percentages by the list
`hycontrol-frame-widths' and typically go from widest to narrowest." t nil) (autoload 'hycontrol-frame-adjust-heights "hycontrol" "Cycle through different common height adjustments of a frame.
Heights are given in screen percentages by the list
`hycontrol-frame-heights' and typically go from tallest to shortest." t nil) (autoload 'hycontrol-frame-adjust-heights-full-width "hycontrol" "Cycle through different common height adjustments of a frame after fixing its width full-screen.
Heights are given in screen percentages by the list
`hycontrol-frame-heights' and typically go from tallest to shortest." t nil) (autoload 'hycontrol-windows-grid "hycontrol" "Display a grid of windows in the selected frame, sized according to prefix ARG.
Left digit of ARG is the number of grid rows and the right digit is
the number of grid columns.

If ARG is 0, prompt for a major mode whose buffers should be
displayed first in the grid windows, then prompt for the grid size.

Otherwise, prompt for the grid size if ARG is an invalid size.

With a current buffer in Dired, Buffer Menu or IBuffer mode that
contains marked items, the buffers associated with those items
are displayed first in the grid (unless ARG is 0).

Then the most recently used buffers are displayed in each window,
first selecting only those buffers which match any of the
predicate expressions in `hycontrol-display-buffer-predicate-list'.
(The default predicate list chooses buffers with attached files).

Then, if there are not enough buffers for all windows, the buffers
that failed to match to any predicate are used.  In all cases, buffers
whose names start with a space are ignored.

When done, this resets the persistent prefix argument to 1 to
prevent following commands from using the often large grid size
argument.

(fn ARG)" t nil) (autoload 'hycontrol-windows-grid-by-major-mode "hycontrol" "Display a grid of windows in the selected frame, sized according to prefix ARG, with buffers of major MODE.
Left digit of ARG is the number of grid rows and the right digit is
the number of grid columns.

See documentation of `hycontrol-windows-grid' for further details.

(fn ARG MODE)" t nil) (autoload 'hycontrol-windows-grid-repeatedly "hycontrol" "Repeatedly display different window grid layouts according to prefix ARG prompted for each time.
Left digit of ARG is the number of grid rows and the right digit is
the number of grid columns. 

See documentation of `hycontrol-windows-grid' for further details.

(fn &optional ARG)" t nil) (autoload 'hycontrol-window-to-new-frame "hycontrol" "Create a new frame sized to match the selected window with the same buffer.
If there is only one window in the source frame or if `hycontrol-keep-window-flag'
is non-nil, leave the original window and just clone it into the new frame;
otherwise, delete the original window." t nil) (autoload 'hycontrol-clone-window-to-new-frame "hycontrol" "Create a new frame sized to match the selected window with the same buffer." t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hycontrol" '("hycontrol-"))) (autoload 'hypb:configuration "hypb" "Insert Emacs configuration information at the end of optional OUT-BUF or the current buffer.

(fn &optional OUT-BUF)" nil nil) (autoload 'hypb:locate "hypb" "Find file name match anywhere, calling the value of `locate-command', and putting results in the `*Locate*' buffer.
Pass it SEARCH-STRING as argument.  Interactively, prompt for SEARCH-STRING.
With prefix arg ARG, prompt for the exact shell command to run instead.

This program searches for those file names in a database that match
SEARCH-STRING and normally outputs all matching absolute file names,
one per line.  The database normally consists of all files on your
system, or of all files that you have access to.  Consult the
documentation of the program for the details about how it determines
which file names match SEARCH-STRING.  (Those details vary highly with
the version.)

You can specify another program for this command to run by customizing
the variables `locate-command' or `locate-make-command-line'.

The main use of FILTER is to implement `locate-with-filter'.  See
the docstring of that function for its meaning.

After preparing the results buffer, this runs `dired-mode-hook' and
then `locate-post-command-hook'.

(fn SEARCH-STRING &optional FILTER ARG)" t nil) (autoload 'hypb:map-plist "hypb" "Return result of applying FUNC of two args, key and value, to key-value pairs in PLIST, a property list.

(fn FUNC PLIST)" nil nil) (autoload 'hypb:rgrep "hypb" "Recursively grep with symbol at point or PATTERN over all non-backup and non-autosave files in the current directory tree.
If in an Emacs Lisp mode buffer and no PREFIX-ARG is given, limit search to only .el and .el.gz files.

(fn PATTERN &optional PREFIX-ARG)" t nil) (autoload 'hypb:display-file-with-logo "hypb" "Display a text FILE in help mode with the Hyperbole banner prepended.

(fn FILE)" nil nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hypb" '("hypb:"))) (autoload 'hyperbole-toggle-messaging "hyperbole" "Toggle Hyperbole support for explicit buttons in mail and news buffers.
Toggles the boolean variable `inhibit-hyperbole-messaging\342\200\231 and either
adds hooks (nil value) or removes them (t value).

With optional prefix ARG > 0, enables support.  If ARG <= 0,
disables/inhibits support.

(fn &optional ARG)" t nil) (load "kotl/kotl-autoloads" nil 'nowarn) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hyperbole" '("hkey-" "hyperb"))) (autoload 'hyrolo-initialize-file-list "hyrolo" "Initialize the list of files used for HyRolo search." t nil) (autoload 'hyrolo-add "hyrolo" "Add a new entry in personal rolo for NAME.
Last name first is best, e.g. \"Smith, John\".
With prefix argument, prompts for optional FILE to add entry within.
NAME may be of the form: parent/child to insert child below a parent
entry which begins with the parent string.

(fn NAME &optional FILE)" t nil) (autoload 'hyrolo-display-matches "hyrolo" "Display optional DISPLAY-BUF buffer of previously found rolo matches.
If DISPLAY-BUF is nil, use the value in `hyrolo-display-buffer'.
Second arg RETURN-TO-BUFFER is the buffer to leave point within after the display.

(fn &optional DISPLAY-BUF RETURN-TO-BUFFER)" t nil) (autoload 'hyrolo-edit "hyrolo" "Edits a rolo entry given by optional NAME within `hyrolo-file-list'.
With prefix argument, prompts for optional FILE to locate entry within.
With no NAME arg, simply displays FILE or first entry in `hyrolo-file-list' in an
editable mode.  NAME may be of the form: parent/child to edit child below a
parent entry which begins with the parent string.

(fn &optional NAME FILE)" t nil) (autoload 'hyrolo-fgrep "hyrolo" "Display rolo entries matching STRING (or a logical match expression).
To a maximum of optional prefix arg MAX-MATCHES, in file(s) from optional
HYROLO-FILE or `hyrolo-file-list'.  Default is to find all matching entries.
Each entry is displayed with all of its sub-entries.  Optional COUNT-ONLY
non-nil means don't retrieve and don't display matching entries.  Optional
NO-DISPLAY non-nil means retrieve entries but don't display.

Nil value of MAX-MATCHES means find all matches, t value means find all
matches but omit file headers, negative values mean find up to the inverse of
that number of entries and omit file headers.

Returns number of entries matched.  See also documentation for the variable
`hyrolo-file-list' and the function `hyrolo-fgrep-logical' for documentation on
the logical expression matching.

(fn STRING &optional MAX-MATCHES HYROLO-FILE COUNT-ONLY NO-DISPLAY)" t nil) (autoload 'hyrolo-grep "hyrolo" "Display rolo entries matching REGEXP.
To a maximum of prefix arg MAX-MATCHES, in buffer(s) from optional HYROLO-FILE-OR-BUFS or
hyrolo-file-list.  Default is to find all matching entries.  Each entry is
displayed with all of its sub-entries.  Optional COUNT-ONLY non-nil means don't
retrieve and don't display matching entries.  Optional NO-DISPLAY non-nil
means retrieve entries but don't display.

Nil value of MAX-MATCHES means find all matches, t value means find all matches
but omit file headers, negative values mean find up to the inverse of that
number of entries and omit file headers.

Return number of entries matched.  See also documentation for the variable
hyrolo-file-list.

(fn REGEXP &optional MAX-MATCHES HYROLO-FILE-OR-BUFS COUNT-ONLY NO-DISPLAY)" t nil) (autoload 'hyrolo-kill "hyrolo" "Kill a rolo entry given by NAME within `hyrolo-file-list'.
With prefix argument, prompts for optional FILE to locate entry within.
NAME may be of the form: parent/child to kill child below a parent entry
which begins with the parent string.
Return t if entry is killed, nil otherwise.

(fn NAME &optional FILE)" t nil) (autoload 'hyrolo-sort "hyrolo" "Sort up to 14 levels of entries in HYROLO-FILE (default is personal rolo).
Assumes entries are delimited by one or more `*'characters.
Return list of number of groupings at each entry level.

(fn &optional HYROLO-FILE)" t nil) (autoload 'hyrolo-toggle-datestamps "hyrolo" "Toggle whether datestamps are updated when rolo entries are modified.
With optional ARG, turn them on iff ARG is positive.

(fn &optional ARG)" t nil) (autoload 'hyrolo-word "hyrolo" "Display rolo entries with whole word match for STRING.
To a maximum of optional prefix arg MAX-MATCHES, in file(s) from optional
HYROLO-FILE or hyrolo-file-list.  Default is to find all matching entries.  Each
entry is displayed with all of its sub-entries.  Optional COUNT-ONLY non-nil
means don't retrieve and don't display matching entries.  Optional NO-DISPLAY
non-nil means retrieve entries but don't display.

Nil value of MAX-MATCHES means find all matches, t value means find all matches
but omit file headers, negative values mean find up to the inverse of that
number of entries and omit file headers.

Return number of entries matched.  See also documentation for the variable
hyrolo-file-list.

(fn STRING &optional MAX-MATCHES HYROLO-FILE COUNT-ONLY NO-DISPLAY)" t nil) (autoload 'hyrolo-yank "hyrolo" "Insert at point the first rolo entry matching NAME.
With optional prefix arg, REGEXP-P, treats NAME as a regular expression instead
of a string.

(fn NAME &optional REGEXP-P)" t nil) (autoload 'hyrolo-bbdb-fgrep "hyrolo" "Fgrep over a bbdb database and format the results as rolo entries.
With optional prefix ARG, do a grep regexp match instead of a string match.

(fn &optional ARG)" t nil) (autoload 'hyrolo-bbdb-grep "hyrolo" "Grep over a bbdb database and format the results as rolo entries.
With optional prefix ARG, do an fgrep string match instead of a regexp match.

Output looks like so:
======================================================================
@loc> \".bbdb\"
======================================================================
* Jones     Tom                <tj@groovycat.org>
* Sera      Kate               <uptown@singular.net>
* Yako      Maso               <ym@destination.ny>

(fn &optional ARG)" t nil) (autoload 'hyrolo-google-contacts-fgrep "hyrolo" "Fgrep over a buffer of Google Contacts and format the results as rolo entries.
With optional prefix ARG, do a grep regexp match instead of a string match.

(fn &optional ARG)" t nil) (autoload 'hyrolo-google-contacts-grep "hyrolo" "Grep over a buffer of Google Contacts and format the results as rolo entries.
With optional prefix ARG, do an fgrep string match instead of a regexp match.

Output looks like so:
======================================================================
@loc> <buffer *Google Contacts*>
======================================================================
* Jones     Tom
* Sera      Kate
* Yako      Maso

(fn &optional ARG)" t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hyrolo" '("hyrolo-"))) (autoload 'hyrolo-demo-fgrep "hyrolo-demo" "Display rolo entries in \"DEMO-ROLO.otl\" matching STRING (or a logical match expression).
Display to a maximum of optional prefix arg MAX-MATCHES.
Each entry is displayed with all of its sub-entries.

Nil value of MAX-MATCHES means find all matches, t value means find all
matches but omit file headers, negative values mean find up to the inverse of
that number of entries and omit file headers.

Returns number of entries matched.  See also documentation for
the function `hyrolo-demo-fgrep-logical' for documentation on the
logical expression matching.

(fn STRING &optional MAX-MATCHES)" t nil) (autoload 'hyrolo-demo-fgrep-logical "hyrolo-demo" "Display rolo entries in \"DEMO-ROLO.otl\" matching EXPR which may contain prefix logical operators.
A complex example of EXPR might be:
  (and (or (not time card) (xor (french balloons) spanish)) teacher pet)
which means:
  Match neither `time' nor `card'
    or
  Matches exactly one of `french balloons' or `spanish'
    and
  Matches `teacher' and `pet'.

Either double quotes or parentheses may be used to group multiple words as a
single argument.

(fn EXPR)" t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hyrolo-demo" '("hyrolo-demo-"))) (autoload 'hyrolo-fgrep-logical "hyrolo-logic" "Display rolo entries matching EXPR which may contain prefix logical operators.
A complex example of EXPR might be:
  (and (or (not time card) (xor (and french balloons) spanish)) teacher pet)
which means:
  Match neither `time' nor `card'
    or
  Match exactly one of `french balloons' or `spanish'
    and
  Match `teacher' and `pet'.

Either double quotes or parentheses may be used to group multiple words as a
single argument.

(fn EXPR)" t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hyrolo-logic" '("hyrolo-"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hyrolo-menu" '("hyrolo-" "id-" "infodock-hyrolo-menu"))) (autoload 'hywconfig-add-by-name "hywconfig" "Save the current window configuration under the string NAME.
When called interactively and a window configuration already exists under
NAME, confirms whether or not to replace it.

(fn NAME)" t nil) (autoload 'hywconfig-delete-by-name "hywconfig" "Deletes frame-specific window configuration saved under NAME.

(fn NAME)" t nil) (autoload 'hywconfig-restore-by-name "hywconfig" "Restore frame-specific window configuration saved under NAME.

(fn NAME)" t nil) (autoload 'hywconfig-delete-pop "hywconfig" "Replace the current frame's window configuration with the one most recently saved to the ring.
Then deletes this new configuration from the ring." t nil) (autoload 'hywconfig-ring-empty-p "hywconfig" "Return t if the wconfig ring for the current frame is empty; nil otherwise." nil nil) (autoload 'hywconfig-ring-save "hywconfig" "Save the current frame's window configuration onto the save ring.
Use {\\[hywconfig-yank-pop]} to restore it at a later time." t nil) (autoload 'hywconfig-yank-pop "hywconfig" "Replace the current frame's window configuration with the prefix arg Nth prior one in save ring.
Interactively, default value of N = 1, means the last saved window
configuration is displayed.

The sequence of window configurations wraps around, so that after the
oldest one comes the newest one.

(fn N)" t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hywconfig" '("hywconfig-"))) (autoload 'set:create "set" "Return a new set created from any number of ELEMENTS.
If no ELEMENTS are given, return the empty set.  Uses `set:equal-op'
for comparison.

(fn &rest ELEMENTS)" nil nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "set" '("set:"))) (provide 'hyperbole-autoloads)) "epl" ((epl-autoloads epl) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "epl" '("epl-"))) (provide 'epl-autoloads)) "pkg-info" ((pkg-info-autoloads pkg-info) (autoload 'pkg-info-library-original-version "pkg-info" "Get the original version in the header of LIBRARY.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no X-Original-Version
header.

See Info node `(elisp)Library Headers' for more information
about library headers.

(fn LIBRARY &optional SHOW)" t nil) (autoload 'pkg-info-library-version "pkg-info" "Get the version in the header of LIBRARY.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no proper header.

See Info node `(elisp)Library Headers' for more information
about library headers.

(fn LIBRARY &optional SHOW)" t nil) (autoload 'pkg-info-defining-library-original-version "pkg-info" "Get the original version of the library defining FUNCTION.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

(fn FUNCTION &optional SHOW)" t nil) (autoload 'pkg-info-defining-library-version "pkg-info" "Get the version of the library defining FUNCTION.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

(fn FUNCTION &optional SHOW)" t nil) (autoload 'pkg-info-package-version "pkg-info" "Get the version of an installed PACKAGE.

If SHOW is non-nil, show the version in the minibuffer.

Return the version as list, or nil if PACKAGE is not installed.

(fn PACKAGE &optional SHOW)" t nil) (autoload 'pkg-info-version-info "pkg-info" "Obtain complete version info for LIBRARY and PACKAGE.

LIBRARY is a symbol denoting a named feature, or a library name
as string.  PACKAGE is a symbol denoting an ELPA package.  If
omitted or nil, default to LIBRARY.

If SHOW is non-nil, show the version in the minibuffer.

When called interactively, prompt for LIBRARY.  When called
interactively with prefix argument, prompt for PACKAGE as well.

Return a string with complete version information for LIBRARY.
This version information contains the version from the headers of
LIBRARY, and the version of the installed PACKAGE, the LIBRARY is
part of.  If PACKAGE is not installed, or if the PACKAGE version
is the same as the LIBRARY version, do not include a package
version.

(fn LIBRARY &optional PACKAGE SHOW)" t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pkg-info" '("pkg-info-"))) (provide 'pkg-info-autoloads)) "projectile" ((projectile-autoloads projectile) (autoload 'projectile-version "projectile" "Get the Projectile version as string.

If called interactively or if SHOW-VERSION is non-nil, show the
version in the echo area and the messages buffer.

The returned string includes both, the version from package.el
and the library version, if both a present and different.

If the version number could not be determined, signal an error,
if called interactively, or if SHOW-VERSION is non-nil, otherwise
just return nil.

(fn &optional SHOW-VERSION)" t nil) (autoload 'projectile-invalidate-cache "projectile" "Remove the current project's files from `projectile-projects-cache'.

With a prefix argument PROMPT prompts for the name of the project whose cache
to invalidate.

(fn PROMPT)" t nil) (autoload 'projectile-purge-file-from-cache "projectile" "Purge FILE from the cache of the current project.

(fn FILE)" t nil) (autoload 'projectile-purge-dir-from-cache "projectile" "Purge DIR from the cache of the current project.

(fn DIR)" t nil) (autoload 'projectile-cache-current-file "projectile" "Add the currently visited file to the cache." t nil) (autoload 'projectile-discover-projects-in-directory "projectile" "Discover any projects in DIRECTORY and add them to the projectile cache.
This function is not recursive and only adds projects with roots
at the top level of DIRECTORY.

(fn DIRECTORY)" t nil) (autoload 'projectile-discover-projects-in-search-path "projectile" "Discover projects in `projectile-project-search-path'.
Invoked automatically when `projectile-mode' is enabled." t nil) (autoload 'projectile-switch-to-buffer "projectile" "Switch to a project buffer." t nil) (autoload 'projectile-switch-to-buffer-other-window "projectile" "Switch to a project buffer and show it in another window." t nil) (autoload 'projectile-switch-to-buffer-other-frame "projectile" "Switch to a project buffer and show it in another frame." t nil) (autoload 'projectile-display-buffer "projectile" "Display a project buffer in another window without selecting it." t nil) (autoload 'projectile-project-buffers-other-buffer "projectile" "Switch to the most recently selected buffer project buffer.
Only buffers not visible in windows are returned." t nil) (autoload 'projectile-multi-occur "projectile" "Do a `multi-occur' in the project's buffers.
With a prefix argument, show NLINES of context.

(fn &optional NLINES)" t nil) (autoload 'projectile-find-other-file "projectile" "Switch between files with the same name but different extensions.
With FLEX-MATCHING, match any file that contains the base name of current file.
Other file extensions can be customized with the variable `projectile-other-file-alist'.

(fn &optional FLEX-MATCHING)" t nil) (autoload 'projectile-find-other-file-other-window "projectile" "Switch between files with the same name but different extensions in other window.
With FLEX-MATCHING, match any file that contains the base name of current file.
Other file extensions can be customized with the variable `projectile-other-file-alist'.

(fn &optional FLEX-MATCHING)" t nil) (autoload 'projectile-find-other-file-other-frame "projectile" "Switch between files with the same name but different extensions in other frame.
With FLEX-MATCHING, match any file that contains the base name of current file.
Other file extensions can be customized with the variable `projectile-other-file-alist'.

(fn &optional FLEX-MATCHING)" t nil) (autoload 'projectile-find-file-dwim "projectile" "Jump to a project's files using completion based on context.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

If point is on a filename, Projectile first tries to search for that
file in project:

- If it finds just a file, it switches to that file instantly.  This works even
if the filename is incomplete, but there's only a single file in the current project
that matches the filename at point.  For example, if there's only a single file named
\"projectile/projectile.el\" but the current filename is \"projectile/proj\" (incomplete),
`projectile-find-file-dwim' still switches to \"projectile/projectile.el\" immediately
 because this is the only filename that matches.

- If it finds a list of files, the list is displayed for selecting.  A list of
files is displayed when a filename appears more than one in the project or the
filename at point is a prefix of more than two files in a project.  For example,
if `projectile-find-file-dwim' is executed on a filepath like \"projectile/\", it lists
the content of that directory.  If it is executed on a partial filename like
 \"projectile/a\", a list of files with character 'a' in that directory is presented.

- If it finds nothing, display a list of all files in project for selecting.

(fn &optional INVALIDATE-CACHE)" t nil) (autoload 'projectile-find-file-dwim-other-window "projectile" "Jump to a project's files using completion based on context in other window.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

If point is on a filename, Projectile first tries to search for that
file in project:

- If it finds just a file, it switches to that file instantly.  This works even
if the filename is incomplete, but there's only a single file in the current project
that matches the filename at point.  For example, if there's only a single file named
\"projectile/projectile.el\" but the current filename is \"projectile/proj\" (incomplete),
`projectile-find-file-dwim-other-window' still switches to \"projectile/projectile.el\"
immediately because this is the only filename that matches.

- If it finds a list of files, the list is displayed for selecting.  A list of
files is displayed when a filename appears more than one in the project or the
filename at point is a prefix of more than two files in a project.  For example,
if `projectile-find-file-dwim-other-window' is executed on a filepath like \"projectile/\", it lists
the content of that directory.  If it is executed on a partial filename
like \"projectile/a\", a list of files with character 'a' in that directory
is presented.

- If it finds nothing, display a list of all files in project for selecting.

(fn &optional INVALIDATE-CACHE)" t nil) (autoload 'projectile-find-file-dwim-other-frame "projectile" "Jump to a project's files using completion based on context in other frame.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

If point is on a filename, Projectile first tries to search for that
file in project:

- If it finds just a file, it switches to that file instantly.  This works even
if the filename is incomplete, but there's only a single file in the current project
that matches the filename at point.  For example, if there's only a single file named
\"projectile/projectile.el\" but the current filename is \"projectile/proj\" (incomplete),
`projectile-find-file-dwim-other-frame' still switches to \"projectile/projectile.el\"
immediately because this is the only filename that matches.

- If it finds a list of files, the list is displayed for selecting.  A list of
files is displayed when a filename appears more than one in the project or the
filename at point is a prefix of more than two files in a project.  For example,
if `projectile-find-file-dwim-other-frame' is executed on a filepath like \"projectile/\", it lists
the content of that directory.  If it is executed on a partial filename
like \"projectile/a\", a list of files with character 'a' in that directory
is presented.

- If it finds nothing, display a list of all files in project for selecting.

(fn &optional INVALIDATE-CACHE)" t nil) (autoload 'projectile-find-file "projectile" "Jump to a project's file using completion.
With a prefix arg INVALIDATE-CACHE invalidates the cache first.

(fn &optional INVALIDATE-CACHE)" t nil) (autoload 'projectile-find-file-other-window "projectile" "Jump to a project's file using completion and show it in another window.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

(fn &optional INVALIDATE-CACHE)" t nil) (autoload 'projectile-find-file-other-frame "projectile" "Jump to a project's file using completion and show it in another frame.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

(fn &optional INVALIDATE-CACHE)" t nil) (autoload 'projectile-toggle-project-read-only "projectile" "Toggle project read only." t nil) (autoload 'projectile-find-dir "projectile" "Jump to a project's directory using completion.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

(fn &optional INVALIDATE-CACHE)" t nil) (autoload 'projectile-find-dir-other-window "projectile" "Jump to a project's directory in other window using completion.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

(fn &optional INVALIDATE-CACHE)" t nil) (autoload 'projectile-find-dir-other-frame "projectile" "Jump to a project's directory in other frame using completion.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

(fn &optional INVALIDATE-CACHE)" t nil) (autoload 'projectile-find-test-file "projectile" "Jump to a project's test file using completion.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

(fn &optional INVALIDATE-CACHE)" t nil) (autoload 'projectile-find-related-file-other-window "projectile" "Open related file in other window." t nil) (autoload 'projectile-find-related-file-other-frame "projectile" "Open related file in other frame." t nil) (autoload 'projectile-find-related-file "projectile" "Open related file." t nil) (autoload 'projectile-related-files-fn-groups "projectile" "Generate a related-files-fn which relates as KIND for files in each of GROUPS.

(fn KIND GROUPS)" nil nil) (autoload 'projectile-related-files-fn-extensions "projectile" "Generate a related-files-fn which relates as KIND for files having EXTENSIONS.

(fn KIND EXTENSIONS)" nil nil) (autoload 'projectile-related-files-fn-test-with-prefix "projectile" "Generate a related-files-fn which relates tests and impl for files with EXTENSION based on TEST-PREFIX.

(fn EXTENSION TEST-PREFIX)" nil nil) (autoload 'projectile-related-files-fn-test-with-suffix "projectile" "Generate a related-files-fn which relates tests and impl for files with EXTENSION based on TEST-SUFFIX.

(fn EXTENSION TEST-SUFFIX)" nil nil) (autoload 'projectile-project-info "projectile" "Display info for current project." t nil) (autoload 'projectile-find-implementation-or-test-other-window "projectile" "Open matching implementation or test file in other window." t nil) (autoload 'projectile-find-implementation-or-test-other-frame "projectile" "Open matching implementation or test file in other frame." t nil) (autoload 'projectile-toggle-between-implementation-and-test "projectile" "Toggle between an implementation file and its test file." t nil) (autoload 'projectile-grep "projectile" "Perform rgrep in the project.

With a prefix ARG asks for files (globbing-aware) which to grep in.
With prefix ARG of `-' (such as `M--'), default the files (without prompt),
to `projectile-grep-default-files'.

With REGEXP given, don't query the user for a regexp.

(fn &optional REGEXP ARG)" t nil) (autoload 'projectile-ag "projectile" "Run an ag search with SEARCH-TERM in the project.

With an optional prefix argument ARG SEARCH-TERM is interpreted as a
regular expression.

(fn SEARCH-TERM &optional ARG)" t nil) (autoload 'projectile-ripgrep "projectile" "Run a Ripgrep search with `SEARCH-TERM' at current project root.

With an optional prefix argument ARG SEARCH-TERM is interpreted as a
regular expression.

(fn SEARCH-TERM &optional ARG)" t nil) (autoload 'projectile-regenerate-tags "projectile" "Regenerate the project's [e|g]tags." t nil) (autoload 'projectile-find-tag "projectile" "Find tag in project." t nil) (autoload 'projectile-run-command-in-root "projectile" "Invoke `execute-extended-command' in the project's root." t nil) (autoload 'projectile-run-shell-command-in-root "projectile" "Invoke `shell-command' in the project's root." t nil) (autoload 'projectile-run-async-shell-command-in-root "projectile" "Invoke `async-shell-command' in the project's root." t nil) (autoload 'projectile-run-gdb "projectile" "Invoke `gdb' in the project's root." t nil) (autoload 'projectile-run-shell "projectile" "Invoke `shell' in the project's root.

Switch to the project specific shell buffer if it already exists.

Use a prefix argument ARG to indicate creation of a new process instead.

(fn &optional ARG)" t nil) (autoload 'projectile-run-eshell "projectile" "Invoke `eshell' in the project's root.

Switch to the project specific eshell buffer if it already exists.

Use a prefix argument ARG to indicate creation of a new process instead.

(fn &optional ARG)" t nil) (autoload 'projectile-run-ielm "projectile" "Invoke `ielm' in the project's root.

Switch to the project specific ielm buffer if it already exists.

Use a prefix argument ARG to indicate creation of a new process instead.

(fn &optional ARG)" t nil) (autoload 'projectile-run-term "projectile" "Invoke `term' in the project's root.

Switch to the project specific term buffer if it already exists.

Use a prefix argument ARG to indicate creation of a new process instead.

(fn &optional ARG)" t nil) (autoload 'projectile-run-vterm "projectile" "Invoke `vterm' in the project's root.

Switch to the project specific term buffer if it already exists.

Use a prefix argument ARG to indicate creation of a new process instead.

(fn &optional ARG)" t nil) (autoload 'projectile-replace "projectile" "Replace literal string in project using non-regexp `tags-query-replace'.

With a prefix argument ARG prompts you for a directory on which
to run the replacement.

(fn &optional ARG)" t nil) (autoload 'projectile-replace-regexp "projectile" "Replace a regexp in the project using `tags-query-replace'.

With a prefix argument ARG prompts you for a directory on which
to run the replacement.

(fn &optional ARG)" t nil) (autoload 'projectile-kill-buffers "projectile" "Kill project buffers.

The buffer are killed according to the value of
`projectile-kill-buffers-filter'." t nil) (autoload 'projectile-save-project-buffers "projectile" "Save all project buffers." t nil) (autoload 'projectile-dired "projectile" "Open `dired' at the root of the project." t nil) (autoload 'projectile-dired-other-window "projectile" "Open `dired'  at the root of the project in another window." t nil) (autoload 'projectile-dired-other-frame "projectile" "Open `dired' at the root of the project in another frame." t nil) (autoload 'projectile-vc "projectile" "Open `vc-dir' at the root of the project.

For git projects `magit-status-internal' is used if available.
For hg projects `monky-status' is used if available.

If PROJECT-ROOT is given, it is opened instead of the project
root directory of the current buffer file.  If interactively
called with a prefix argument, the user is prompted for a project
directory to open.

(fn &optional PROJECT-ROOT)" t nil) (autoload 'projectile-recentf "projectile" "Show a list of recently visited files in a project." t nil) (autoload 'projectile-configure-project "projectile" "Run project configure command.

Normally you'll be prompted for a compilation command, unless
variable `compilation-read-command'.  You can force the prompt
with a prefix ARG.

(fn ARG)" t nil) (autoload 'projectile-compile-project "projectile" "Run project compilation command.

Normally you'll be prompted for a compilation command, unless
variable `compilation-read-command'.  You can force the prompt
with a prefix ARG.

(fn ARG)" t nil) (autoload 'projectile-test-project "projectile" "Run project test command.

Normally you'll be prompted for a compilation command, unless
variable `compilation-read-command'.  You can force the prompt
with a prefix ARG.

(fn ARG)" t nil) (autoload 'projectile-install-project "projectile" "Run project install command.

Normally you'll be prompted for a compilation command, unless
variable `compilation-read-command'.  You can force the prompt
with a prefix ARG.

(fn ARG)" t nil) (autoload 'projectile-package-project "projectile" "Run project package command.

Normally you'll be prompted for a compilation command, unless
variable `compilation-read-command'.  You can force the prompt
with a prefix ARG.

(fn ARG)" t nil) (autoload 'projectile-run-project "projectile" "Run project run command.

Normally you'll be prompted for a compilation command, unless
variable `compilation-read-command'.  You can force the prompt
with a prefix ARG.

(fn ARG)" t nil) (autoload 'projectile-repeat-last-command "projectile" "Run last projectile external command.

External commands are: `projectile-configure-project',
`projectile-compile-project', `projectile-test-project',
`projectile-install-project', `projectile-package-project',
and `projectile-run-project'.

If the prefix argument SHOW_PROMPT is non nil, the command can be edited.

(fn SHOW-PROMPT)" t nil) (autoload 'projectile-switch-project "projectile" "Switch to a project we have visited before.
Invokes the command referenced by `projectile-switch-project-action' on switch.
With a prefix ARG invokes `projectile-commander' instead of
`projectile-switch-project-action.'

(fn &optional ARG)" t nil) (autoload 'projectile-switch-open-project "projectile" "Switch to a project we have currently opened.
Invokes the command referenced by `projectile-switch-project-action' on switch.
With a prefix ARG invokes `projectile-commander' instead of
`projectile-switch-project-action.'

(fn &optional ARG)" t nil) (autoload 'projectile-find-file-in-directory "projectile" "Jump to a file in a (maybe regular) DIRECTORY.

This command will first prompt for the directory the file is in.

(fn &optional DIRECTORY)" t nil) (autoload 'projectile-find-file-in-known-projects "projectile" "Jump to a file in any of the known projects." t nil) (autoload 'projectile-cleanup-known-projects "projectile" "Remove known projects that don't exist anymore." t nil) (autoload 'projectile-clear-known-projects "projectile" "Clear both `projectile-known-projects' and `projectile-known-projects-file'." t nil) (autoload 'projectile-remove-known-project "projectile" "Remove PROJECT from the list of known projects.

(fn &optional PROJECT)" t nil) (autoload 'projectile-remove-current-project-from-known-projects "projectile" "Remove the current project from the list of known projects." t nil) (autoload 'projectile-add-known-project "projectile" "Add PROJECT-ROOT to the list of known projects.

(fn PROJECT-ROOT)" t nil) (autoload 'projectile-ibuffer "projectile" "Open an IBuffer window showing all buffers in the current project.

Let user choose another project when PROMPT-FOR-PROJECT is supplied.

(fn PROMPT-FOR-PROJECT)" t nil) (autoload 'projectile-commander "projectile" "Execute a Projectile command with a single letter.
The user is prompted for a single character indicating the action to invoke.
The `?' character describes then
available actions.

See `def-projectile-commander-method' for defining new methods." t nil) (autoload 'projectile-browse-dirty-projects "projectile" "Browse dirty version controlled projects.

With a prefix argument, or if CACHED is non-nil, try to use the cached
dirty project list.

(fn &optional CACHED)" t nil) (autoload 'projectile-edit-dir-locals "projectile" "Edit or create a .dir-locals.el file of the project." t nil) (defvar projectile-mode nil "Non-nil if Projectile mode is enabled.
See the `projectile-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `projectile-mode'.") (custom-autoload 'projectile-mode "projectile" nil) (autoload 'projectile-mode "projectile" "Minor mode to assist project management and navigation.

When called interactively, toggle `projectile-mode'.  With prefix
ARG, enable `projectile-mode' if ARG is positive, otherwise disable
it.

When called from Lisp, enable `projectile-mode' if ARG is omitted,
nil or positive.  If ARG is `toggle', toggle `projectile-mode'.
Otherwise behave as if called interactively.

\\{projectile-mode-map}

(fn &optional ARG)" t nil) (define-obsolete-function-alias 'projectile-global-mode 'projectile-mode "1.0") (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "projectile" '("??" "compilation-find-file-projectile-find-compilation-buffer" "def-projectile-commander-method" "delete-file-projectile-remove-from-cache" "projectile-"))) (provide 'projectile-autoloads)) "ido-vertical-mode" ((ido-vertical-mode ido-vertical-mode-autoloads) (defvar ido-vertical-mode nil "Non-nil if Ido-Vertical mode is enabled.
See the `ido-vertical-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `ido-vertical-mode'.") (custom-autoload 'ido-vertical-mode "ido-vertical-mode" nil) (autoload 'ido-vertical-mode "ido-vertical-mode" "Makes ido-mode display vertically.

If called interactively, enable Ido-Vertical mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

(fn &optional ARG)" t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ido-vertical-mode" '("ido-vertical-"))) (provide 'ido-vertical-mode-autoloads)) "all-the-icons" ((all-the-icons-faces all-the-icons all-the-icons-autoloads) (autoload 'all-the-icons-icon-for-dir "all-the-icons" "Get the formatted icon for DIR.
ARG-OVERRIDES should be a plist containining `:height',
`:v-adjust' or `:face' properties like in the normal icon
inserting functions.

Note: You want chevron, please use `all-the-icons-icon-for-dir-with-chevron'.

(fn DIR &rest ARG-OVERRIDES)" nil nil) (autoload 'all-the-icons-icon-for-file "all-the-icons" "Get the formatted icon for FILE.
ARG-OVERRIDES should be a plist containining `:height',
`:v-adjust' or `:face' properties like in the normal icon
inserting functions.

(fn FILE &rest ARG-OVERRIDES)" nil nil) (autoload 'all-the-icons-icon-for-mode "all-the-icons" "Get the formatted icon for MODE.
ARG-OVERRIDES should be a plist containining `:height',
`:v-adjust' or `:face' properties like in the normal icon
inserting functions.

(fn MODE &rest ARG-OVERRIDES)" nil nil) (autoload 'all-the-icons-icon-for-url "all-the-icons" "Get the formatted icon for URL.
If an icon for URL isn't found in `all-the-icons-url-alist', a globe is used.
ARG-OVERRIDES should be a plist containining `:height',
`:v-adjust' or `:face' properties like in the normal icon
inserting functions.

(fn URL &rest ARG-OVERRIDES)" nil nil) (autoload 'all-the-icons-install-fonts "all-the-icons" "Helper function to download and install the latests fonts based on OS.
When PFX is non-nil, ignore the prompt and just install

(fn &optional PFX)" t nil) (autoload 'all-the-icons-insert "all-the-icons" "Interactive icon insertion function.
When Prefix ARG is non-nil, insert the propertized icon.
When FAMILY is non-nil, limit the candidates to the icon set matching it.

(fn &optional ARG FAMILY)" t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "all-the-icons" '("all-the-icons-"))) (provide 'all-the-icons-autoloads)) "general" ((general-autoloads \.dirs-local general) (autoload 'general-define-key "general" "The primary key definition function provided by general.el.

Define MAPS, optionally using DEFINER, in the keymap(s) corresponding to STATES
and KEYMAPS.

MAPS consists of paired keys (vectors or strings; also see
`general-implicit-kbd') and definitions (those mentioned in `define-key''s
docstring and general.el's \"extended\" definitions). All pairs (when not
ignored) will be recorded and can be later displayed with
`general-describe-keybindings'.

If DEFINER is specified, a custom key definer will be used to bind MAPS. See
general.el's documentation/README for more information.

Unlike with normal key definitions functions, the keymaps in KEYMAPS should be
quoted (this allows using the keymap name for other purposes, e.g. deferring
keybindings if the keymap symbol is not bound, optionally inferring the
corresponding major mode for a symbol by removing \"-map\" for :which-key,
easily storing the keymap name for use with `general-describe-keybindings',
etc.). Note that general.el provides other key definer macros that do not
require quoting keymaps.

STATES corresponds to the evil state(s) to bind the keys in. Non-evil users
should not set STATES. When STATES is non-nil, `evil-define-key*' will be
used (the evil auxiliary keymaps corresponding STATES and KEYMAPS will be used);
otherwise `define-key' will be used (unless DEFINER is specified). KEYMAPS
defaults to 'global. There is also 'local, which create buffer-local
keybindings for both evil and non-evil keybindings. There are other special,
user-alterable \"shorthand\" symbols for keymaps and states (see
`general-keymap-aliases' and `general-state-aliases').

Note that STATES and KEYMAPS can either be lists or single symbols. If any
keymap does not exist, those keybindings will be deferred until the keymap does
exist, so using `eval-after-load' is not necessary with this function.

PREFIX corresponds to a key to prefix keys in MAPS with and defaults to none. To
bind/unbind a key specified with PREFIX, \"\" can be specified as a key in
MAPS (e.g. ...:prefix \"SPC\" \"\" nil... will unbind space).

The keywords in this paragraph are only useful for evil users. If
NON-NORMAL-PREFIX is specified, this prefix will be used instead of PREFIX for
states in `general-non-normal-states' (e.g. the emacs and insert states). This
argument will only have an effect if one of these states is in STATES or if
corresponding global keymap (e.g. `evil-insert-state-map') is in KEYMAPS.
Alternatively, GLOBAL-PREFIX can be used with PREFIX and/or NON-NORMAL-PREFIX to
bind keys in all states under the specified prefix. Like with NON-NORMAL-PREFIX,
GLOBAL-PREFIX will prevent PREFIX from applying to `general-non-normal-states'.
INFIX can be used to append a string to all of the specified prefixes. This is
potentially useful when you are using GLOBAL-PREFIX and/or NON-NORMAL-PREFIX so
that you can sandwich keys in between all the prefixes and the specified keys in
MAPS. This may be particularly useful if you are using default prefixes in a
wrapper function/macro so that you can add to them without needing to re-specify
all of them. If none of the other prefix keyword arguments are specified, INFIX
will have no effect.

If PREFIX-COMMAND or PREFIX-MAP is specified, a prefix command and/or keymap
will be created. PREFIX-NAME can be additionally specified to set the keymap
menu name/prompt. If PREFIX-COMMAND is specified, `define-prefix-command' will
be used. Otherwise, only a prefix keymap will be created. Previously created
prefix commands/keymaps will never be redefined/cleared. All prefixes (including
the INFIX key, if specified) will then be bound to PREFIX-COMMAND or PREFIX-MAP.
If the user did not specify any PREFIX or manually specify any KEYMAPS, general
will bind all MAPS in the prefix keymap corresponding to either PREFIX-MAP or
PREFIX-COMMAND instead of in the default keymap.

PREDICATE corresponds to a predicate to check to determine whether a definition
should be active (e.g. \":predicate '(eobp)\"). Definitions created with a
predicate will only be active when the predicate is true. When the predicate is
false, key lookup will continue to search for a match in lower-precedence
keymaps.

In addition to the normal definitions supported by `define-key', general.el also
provides \"extended\" definitions, which are plists containing the normal
definition as well as other keywords. For example, PREDICATE can be specified
globally or locally in an extended definition. New global (~general-define-key~)
and local (extended definition) keywords can be added by the user. See
`general-extended-def-keywords' and general.el's documentation/README for more
information.

PACKAGE is the global version of the extended definition keyword that specifies
the package a keymap is defined in (used for \"autoloading\" keymaps)

PROPERTIES, REPEAT, and JUMP are the global versions of the extended definition
keywords used for adding evil command properties to commands.

MAJOR-MODES, WK-MATCH-KEYS, WK-MATCH-BINDINGS, and WK-FULL-KEYS are the
corresponding global versions of which-key extended definition keywords. They
will only have an effect for extended definitions that specify :which-key or
:wk. See the section on extended definitions in the general.el
documentation/README for more information.

LISPY-PLIST and WORF-PLIST are the global versions of extended definition
keywords that are used for each corresponding custom DEFINER.

(fn &rest MAPS &key DEFINER (STATES general-default-states) (KEYMAPS general-default-keymaps KEYMAPS-SPECIFIED-P) (PREFIX general-default-prefix) (NON-NORMAL-PREFIX general-default-non-normal-prefix) (GLOBAL-PREFIX general-default-global-prefix) INFIX PREFIX-COMMAND PREFIX-MAP PREFIX-NAME PREDICATE PACKAGE PROPERTIES REPEAT JUMP MAJOR-MODES (WK-MATCH-KEYS t) (WK-MATCH-BINDING t) (WK-FULL-KEYS t) LISPY-PLIST WORF-PLIST &allow-other-keys)" nil nil) (autoload 'general-emacs-define-key "general" "A wrapper for `general-define-key' that is similar to `define-key'.
It has a positional argument for KEYMAPS (that will not be overridden by a later
:keymaps argument). Besides this, it acts the same as `general-define-key', and
ARGS can contain keyword arguments in addition to keybindings. This can
basically act as a drop-in replacement for `define-key', and unlike with
`general-define-key', KEYMAPS does not need to be quoted.

(fn KEYMAPS &rest ARGS)" nil t) (function-put 'general-emacs-define-key 'lisp-indent-function '1) (autoload 'general-evil-define-key "general" "A wrapper for `general-define-key' that is similar to `evil-define-key'.
It has positional arguments for STATES and KEYMAPS (that will not be overridden
by a later :keymaps or :states argument). Besides this, it acts the same as
`general-define-key', and ARGS can contain keyword arguments in addition to
keybindings. This can basically act as a drop-in replacement for
`evil-define-key', and unlike with `general-define-key', KEYMAPS does not need
to be quoted.

(fn STATES KEYMAPS &rest ARGS)" nil t) (function-put 'general-evil-define-key 'lisp-indent-function '2) (autoload 'general-def "general" "General definer that takes a variable number of positional arguments in ARGS.
This macro will act as `general-define-key', `general-emacs-define-key', or
`general-evil-define-key' based on how many of the initial arguments do not
correspond to keybindings. All quoted and non-quoted lists and symbols before
the first string, vector, or keyword are considered to be positional arguments.
This means that you cannot use a function or variable for a key that starts
immediately after the positional arguments. If you need to do this, you should
use one of the definers that `general-def' dispatches to or explicitly separate
the positional arguments from the maps with a bogus keyword pair like
\":start-maps t\"

(fn &rest ARGS)" nil t) (function-put 'general-def 'lisp-indent-function 'defun) (autoload 'general-create-definer "general" "A helper macro to create wrappers for `general-def'.
This can be used to create key definers that will use a certain keymap, evil
state, prefix key, etc. by default. NAME is the wrapper name and DEFAULTS are
the default arguments. WRAPPING can also be optionally specified to use a
different definer than `general-def'. It should not be quoted.

(fn NAME &rest DEFAULTS &key WRAPPING &allow-other-keys)" nil t) (function-put 'general-create-definer 'lisp-indent-function 'defun) (autoload 'general-defs "general" "A wrapper that splits into multiple `general-def's.
Each consecutive grouping of positional argument followed by keyword/argument
pairs (having only one or the other is fine) marks the start of a new section.
Each section corresponds to one use of `general-def'. This means that settings
only apply to the keybindings that directly follow.

Since positional arguments can appear at any point, unqouted symbols are always
considered to be positional arguments (e.g. a keymap). This means that variables
can never be used for keys with `general-defs'. Variables can still be used for
definitions or as arguments to keywords.

(fn &rest ARGS)" nil t) (function-put 'general-defs 'lisp-indent-function 'defun) (autoload 'general-unbind "general" "A wrapper for `general-def' to unbind multiple keys simultaneously.
Insert after all keys in ARGS before passing ARGS to `general-def.' \":with
 #'func\" can optionally specified to use a custom function instead (e.g.
 `ignore').

(fn &rest ARGS)" nil t) (function-put 'general-unbind 'lisp-indent-function 'defun) (autoload 'general-describe-keybindings "general" "Show all keys that have been bound with general in an org buffer.
Any local keybindings will be shown first followed by global keybindings.
With a non-nil prefix ARG only show bindings in active maps.

(fn &optional ARG)" t nil) (autoload 'general-key "general" "Act as KEY's definition in the current context.
This uses an extended menu item's capability of dynamically computing a
definition. It is recommended over `general-simulate-key' wherever possible. See
the docstring of `general-simulate-key' and the readme for information about the
benefits and downsides of `general-key'.

KEY should be a string given in `kbd' notation and should correspond to a single
definition (as opposed to a sequence of commands). When STATE is specified, look
up KEY with STATE as the current evil state. When specified, DOCSTRING will be
the menu item's name/description.

Let can be used to bind variables around key lookup. For example:
(general-key \"some key\"
  :let ((some-var some-val)))

SETUP and TEARDOWN can be used to run certain functions before and after key
lookup. For example, something similar to using :state 'emacs would be:
(general-key \"some key\"
  :setup (evil-local-mode -1)
  :teardown (evil-local-mode))

ACCEPT-DEFAULT, NO-REMAP, and POSITION are passed to `key-binding'.

(fn KEY &key STATE DOCSTRING LET SETUP TEARDOWN ACCEPT-DEFAULT NO-REMAP POSITION)" nil t) (function-put 'general-key 'lisp-indent-function '1) (autoload 'general-simulate-keys "general" "Deprecated. Please use `general-simulate-key' instead.

(fn KEYS &optional STATE KEYMAP (LOOKUP t) DOCSTRING NAME)" nil t) (autoload 'general-simulate-key "general" "Create and return a command that simulates KEYS in STATE and KEYMAP.

`general-key' should be prefered over this whenever possible as it is simpler
and has saner functionality in many cases because it does not rely on
`unread-command-events' (e.g. \"C-h k\" will show the docstring of the command
to be simulated ; see the readme for more information). The main downsides of
`general-key' are that it cannot simulate a command followed by keys or
subsequent commands, and which-key does not currently work well with it when
simulating a prefix key/incomplete key sequence.

KEYS should be a string given in `kbd' notation. It can also be a list of a
single command followed by a string of the key(s) to simulate after calling that
command. STATE should only be specified by evil users and should be a quoted
evil state. KEYMAP should not be quoted. Both STATE and KEYMAP aliases are
supported (but they have to be set when the macro is expanded). When neither
STATE or KEYMAP are specified, the key(s) will be simulated in the current
context.

If NAME is specified, it will replace the automatically generated function name.
NAME should not be quoted. If DOCSTRING is specified, it will replace the
automatically generated docstring.

Normally the generated function will look up KEY in the correct context to try
to match a command. To prevent this lookup, LOOKUP can be specified as nil.
Generally, you will want to keep LOOKUP non-nil because this will allow checking
the evil repeat property of matched commands to determine whether or not they
should be recorded. See the docstring for `general--simulate-keys' for more
information about LOOKUP.

When a WHICH-KEY description is specified, it will replace the command name in
the which-key popup.

When a command name is specified and that command has been remapped (i.e. [remap
command] is currently bound), the remapped version will be used instead of the
original command unless REMAP is specified as nil (it is true by default).

The advantages of this over a keyboard macro are as follows:
- Prefix arguments are supported
- The user can control the context in which the keys are simulated
- The user can simulate both a named command and keys
- The user can simulate an incomplete key sequence (e.g. for a keymap)

(fn KEYS &key STATE KEYMAP NAME DOCSTRING (LOOKUP t) WHICH-KEY (REMAP t))" nil t) (function-put 'general-simulate-key 'lisp-indent-function 'defun) (autoload 'general-key-dispatch "general" "Create and return a command that runs FALLBACK-COMMAND or a command in MAPS.
MAPS consists of <key> <command> pairs. If a key in MAPS is matched, the
corresponding command will be run. Otherwise FALLBACK-COMMAND will be run with
the unmatched keys. So, for example, if \"ab\" was pressed, and \"ab\" is not
one of the key sequences from MAPS, the FALLBACK-COMMAND will be run followed by
the simulated keypresses of \"ab\". Prefix arguments will still work regardless
of which command is run. This is useful for binding under non-prefix keys. For
example, this can be used to redefine a sequence like \"cw\" or \"cow\" in evil
but still have \"c\" work as `evil-change'. If TIMEOUT is specified,
FALLBACK-COMMAND will also be run in the case that the user does not press the
next key within the TIMEOUT (e.g. 0.5).

NAME and DOCSTRING are optional keyword arguments. They can be used to replace
the automatically generated name and docstring for the created function. By
default, `cl-gensym' is used to prevent name clashes (e.g. allows the user to
create multiple different commands using `self-insert-command' as the
FALLBACK-COMMAND without explicitly specifying NAME to manually prevent
clashes).

When INHERIT-KEYMAP is specified, all the keybindings from that keymap will be
inherited in MAPS.

When a WHICH-KEY description is specified, it will replace the command name in
the which-key popup.

When command to be executed has been remapped (i.e. [remap command] is currently
bound), the remapped version will be used instead of the original command unless
REMAP is specified as nil (it is true by default).

(fn FALLBACK-COMMAND &rest MAPS &key TIMEOUT INHERIT-KEYMAP NAME DOCSTRING WHICH-KEY (REMAP t) &allow-other-keys)" nil t) (function-put 'general-key-dispatch 'lisp-indent-function '1) (autoload 'general-predicate-dispatch "general" "

(fn FALLBACK-DEF &rest DEFS &key DOCSTRING &allow-other-keys)" nil t) (function-put 'general-predicate-dispatch 'lisp-indent-function '1) (autoload 'general-translate-key "general" "Translate keys in the keymap(s) corresponding to STATES and KEYMAPS.
STATES should be the name of an evil state, a list of states, or nil. KEYMAPS
should be a symbol corresponding to the keymap to make the translations in or a
list of keymap names. Keymap and state aliases are supported (as well as 'local
and 'global for KEYMAPS).

MAPS corresponds to a list of translations (key replacement pairs). For example,
specifying \"a\" \"b\" will bind \"a\" to \"b\"'s definition in the keymap.
Specifying nil as a replacement will unbind a key.

If DESTRUCTIVE is non-nil, the keymap will be destructively altered without
creating a backup. If DESTRUCTIVE is nil, store a backup of the keymap on the
initial invocation, and for future invocations always look up keys in the
original/backup keymap. On the other hand, if DESTRUCTIVE is non-nil, calling
this function multiple times with \"a\" \"b\" \"b\" \"a\", for example, would
continue to swap and unswap the definitions of these keys. This means that when
DESTRUCTIVE is non-nil, all related swaps/cycles should be done in the same
invocation.

If both MAPS and DESCTRUCTIVE are nil, only create the backup keymap.

(fn STATES KEYMAPS &rest MAPS &key DESTRUCTIVE &allow-other-keys)" nil nil) (function-put 'general-translate-key 'lisp-indent-function 'defun) (autoload 'general-swap-key "general" "Wrapper around `general-translate-key' for swapping keys.
STATES, KEYMAPS, and ARGS are passed to `general-translate-key'. ARGS should
consist of key swaps (e.g. \"a\" \"b\" is equivalent to \"a\" \"b\" \"b\" \"a\"
with `general-translate-key') and optionally keyword arguments for
`general-translate-key'.

(fn STATES KEYMAPS &rest ARGS)" nil t) (function-put 'general-swap-key 'lisp-indent-function 'defun) (autoload 'general-auto-unbind-keys "general" "Advise `define-key' to automatically unbind keys when necessary.
This will prevent errors when a sub-sequence of a key is already bound (e.g. the
user attempts to bind \"SPC a\" when \"SPC\" is bound, resulting in a \"Key
sequnce starts with non-prefix key\" error). When UNDO is non-nil, remove
advice.

(fn &optional UNDO)" nil nil) (autoload 'general-add-hook "general" "A drop-in replacement for `add-hook'.
Unlike `add-hook', HOOKS and FUNCTIONS can be single items or lists. APPEND and
LOCAL are passed directly to `add-hook'. When TRANSIENT is non-nil, each
function will remove itself from the hook it is in after it is run once. If
TRANSIENT is a function, call it on the return value in order to determine
whether to remove a function from the hook. For example, if TRANSIENT is
#'identity, remove each function only if it returns non-nil. TRANSIENT could
alternatively check something external and ignore the function's return value.

(fn HOOKS FUNCTIONS &optional APPEND LOCAL TRANSIENT)" nil nil) (autoload 'general-remove-hook "general" "A drop-in replacement for `remove-hook'.
Unlike `remove-hook', HOOKS and FUNCTIONS can be single items or lists. LOCAL is
passed directly to `remove-hook'.

(fn HOOKS FUNCTIONS &optional LOCAL)" nil nil) (autoload 'general-advice-add "general" "A drop-in replacement for `advice-add'.
SYMBOLS, WHERE, FUNCTIONS, and PROPS correspond to the arguments for
`advice-add'. Unlike `advice-add', SYMBOLS and FUNCTIONS can be single items or
lists. When TRANSIENT is non-nil, each function will remove itself as advice
after it is run once. If TRANSIENT is a function, call it on the return value in
order to determine whether to remove a function as advice. For example, if
TRANSIENT is #'identity, remove each function only if it returns non-nil.
TRANSIENT could alternatively check something external and ignore the function's
return value.

(fn SYMBOLS WHERE FUNCTIONS &optional PROPS TRANSIENT)" nil nil) (autoload 'general-add-advice "general") (autoload 'general-advice-remove "general" "A drop-in replacement for `advice-remove'.
Unlike `advice-remove', SYMBOLS and FUNCTIONS can be single items or lists.

(fn SYMBOLS FUNCTIONS)" nil nil) (autoload 'general-remove-advice "general") (autoload 'general-evil-setup "general" "Set up some basic equivalents for vim mapping functions.
This creates global key definition functions for the evil states.
Specifying SHORT-NAMES as non-nil will create non-prefixed function
aliases such as `nmap' for `general-nmap'.

(fn &optional SHORT-NAMES _)" nil nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "general" '("general-"))) (provide 'general-autoloads)) "god-mode" ((god-mode-autoloads god-mode god-mode-isearch) (autoload 'god-local-mode "god-mode" "Minor mode for running commands.

If called interactively, enable God-Local mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

(fn &optional ARG)" t nil) (autoload 'god-mode "god-mode" "Toggle global `god-local-mode'." t nil) (autoload 'god-mode-all "god-mode" "Toggle `god-local-mode' in all buffers." t nil) (autoload 'god-mode-maybe-activate "god-mode" "Activate `god-local-mode' on individual buffers when appropriate.
STATUS is passed as an argument to `god-mode-activate'.

(fn &optional STATUS)" nil nil) (autoload 'god-execute-with-current-bindings "god-mode" "Execute a single command from God mode, preserving current keybindings.

This command activates God mode temporarily, and deactivates God
mode as soon as the next command is run.  Prefix arguments do not
count as commands for this purpose, and do not cause God mode to
exit.  Moreover, any prefix argument that exists at the time of
this command's invocation is passed along to the next command.

Unlike normal use of God mode, this command makes available all
keybindings that were active at the time of its invocation,
including keybindings that are normally invisible to God mode,
such as those in `emulation-mode-map-alists' or text overlay
properties.  This makes it suitable for use with packages like
Evil that utilize such higher-priority keymaps.  (See Info
node `(elisp)Active Keymaps' for technical details on keymap
precedence.  For an alternative to this command, check out the
evil-god-state package, available on MELPA.)

This command has no effect when called from within God mode.

For interactive use only.  CALLED-INTERACTIVELY is a dummy
parameter to help enforce this restriction.

(fn &optional CALLED-INTERACTIVELY)" t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "god-mode" '("god-"))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "god-mode-isearch" '("god-mode-isearch-"))) (provide 'god-mode-autoloads)) "neotree" ((neotree neotree-autoloads) (autoload 'neotree-find "neotree" "Quick select node which specified PATH in NeoTree.
If path is nil and no buffer file name, then use DEFAULT-PATH,

(fn &optional PATH DEFAULT-PATH)" t nil) (autoload 'neotree-projectile-action "neotree" "Integration with `Projectile'.

Usage:
    (setq projectile-switch-project-action 'neotree-projectile-action).

When running `projectile-switch-project' (C-c p p), `neotree' will change root
automatically." t nil) (autoload 'neotree-toggle "neotree" "Toggle show the NeoTree window." t nil) (autoload 'neotree-show "neotree" "Show the NeoTree window." t nil) (autoload 'neotree-hide "neotree" "Close the NeoTree window." t nil) (autoload 'neotree-dir "neotree" "Show the NeoTree window, and change root to PATH.

(fn PATH)" t nil) (defalias 'neotree 'neotree-show "Show the NeoTree window.") (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "neotree" '("neo" "off-p"))) (provide 'neotree-autoloads)) "jazz-theme" ((jazz-theme-autoloads jazz-theme) (when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name)))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "jazz-theme" '("jazz"))) (provide 'jazz-theme-autoloads)) "smex" ((smex smex-autoloads) (autoload 'smex "smex" nil t nil) (autoload 'smex-major-mode-commands "smex" "Like `smex', but limited to commands that are relevant to the active major mode." t nil) (autoload 'smex-initialize "smex" nil t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "smex" '("smex-"))) (provide 'smex-autoloads)) "s" ((s s-autoloads) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "s" '("s-"))) (provide 's-autoloads)) "amx" ((amx-autoloads amx) (defvar amx-mode nil "Non-nil if Amx mode is enabled.
See the `amx-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `amx-mode'.") (custom-autoload 'amx-mode "amx" nil) (autoload 'amx-mode "amx" "Use ido completion for M-x

If called interactively, enable Amx mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp, also
enable the mode if ARG is omitted or nil, and toggle it if ARG is
`toggle'; disable the mode otherwise.

(fn &optional ARG)" t nil) (autoload 'amx "amx" "Read a command name and execute the command.

This is the main entry point for the Amx package, an alternative
to the normal \\[execute-extended-command] built into Emacs that
provides several extra features." t nil) (autoload 'amx-major-mode-commands "amx" "Like `amx', but limited to commands that are relevant to the active major mode." t nil) (autoload 'amx-initialize "amx" "Ensure that amx is properly initialized.

This function is normally idempotent, only having an effect the
first time it is called, so it is safe to call it at the
beginning of any function that expects amx to be initialized.
However, optional arg REINIT forces the initialization needs to
be re-run. Interactively, reinitialize when a prefix arg is
provided.

(fn &optional REINIT)" t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "amx" '("amx-"))) (provide 'amx-autoloads)) "flx" ((flx-autoloads flx) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "flx" '("flx-"))) (provide 'flx-autoloads)) "flx-ido" ((flx-ido-autoloads flx-ido) (defvar flx-ido-mode nil "Non-nil if Flx-Ido mode is enabled.
See the `flx-ido-mode' command
for a description of this minor mode.") (custom-autoload 'flx-ido-mode "flx-ido" nil) (autoload 'flx-ido-mode "flx-ido" "Toggle flx ido mode

If called interactively, enable Flx-Ido mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

(fn &optional ARG)" t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "flx-ido" '("flx-"))) (provide 'flx-ido-autoloads)) "memoize" ((memoize-autoloads memoize) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "memoize" '("defmemoize" "memoize"))) (provide 'memoize-autoloads)) "ido-completing-read+" ((ido-completing-read+ ido-completing-read+-autoloads) (defvar ido-cr+-minibuffer-depth -1 "Minibuffer depth of the most recent ido-cr+ activation.

If this equals the current minibuffer depth, then the minibuffer
is currently being used by ido-cr+, and ido-cr+ features will be
active. Otherwise, something else is using the minibuffer and
ido-cr+ features will be deactivated to avoid interfering with
the other command.

This is set to -1 by default, since `(minibuffer-depth)' should
never return this value.") (defvar ido-cr+-replace-completely nil "If non-nil, replace `ido-completeing-read' completely with ido-cr+.

Enabling this may interfere with or cause errors in other
packages that use `ido-completing-read'. If you discover any such
incompatibilities, please file a bug report at
https://github.com/DarwinAwardWinner/ido-completing-read-plus/issues") (custom-autoload 'ido-cr+-replace-completely "ido-completing-read+" t) (defsubst ido-cr+-active nil "Return non-nil if ido-cr+ is currently using the minibuffer." (>= ido-cr+-minibuffer-depth (minibuffer-depth))) (autoload 'ido-completing-read+ "ido-completing-read+" "Ido-based method for reading from the minibuffer with completion.

See `completing-read' for the meaning of the arguments.

This function is a wrapper for `ido-completing-read' designed to
be used as the value of `completing-read-function'. Importantly,
it detects edge cases that ido cannot handle and uses normal
completion for them.

See `completing-read' for the meaning of the arguments.

(fn PROMPT COLLECTION &optional PREDICATE REQUIRE-MATCH INITIAL-INPUT HIST DEF INHERIT-INPUT-METHOD)" nil nil) (autoload 'ido-completing-read@ido-cr+-replace "ido-completing-read+" "This advice allows ido-cr+ to completely replace `ido-completing-read'.

See the varaible `ido-cr+-replace-completely' for more information.

(fn ORIG-FUN &rest ARGS)" nil nil) (advice-add 'ido-completing-read :around #'ido-completing-read@ido-cr+-replace) (autoload 'call-interactively@ido-cr+-record-current-command "ido-completing-read+" "Let-bind the command being interactively called.

See `ido-cr+-current-command' for more information.

(fn ORIG-FUN COMMAND &rest ARGS)" nil nil) (advice-add 'call-interactively :around #'call-interactively@ido-cr+-record-current-command) (defvar ido-ubiquitous-mode nil "Non-nil if Ido-Ubiquitous mode is enabled.
See the `ido-ubiquitous-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `ido-ubiquitous-mode'.") (custom-autoload 'ido-ubiquitous-mode "ido-completing-read+" nil) (autoload 'ido-ubiquitous-mode "ido-completing-read+" "Use ido completion instead of standard completion almost everywhere.

If called interactively, enable Ido-Ubiquitous mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

If this mode causes problems for a function, you can customize
when ido completion is or is not used by customizing
`ido-cr+-function-blacklist'.

(fn &optional ARG)" t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ido-completing-read+" '("define-ido-internal-var" "ido-" "minibuf-eldef-update-minibuffer@ido-cr+-compat"))) (provide 'ido-completing-read+-autoloads)) "ido-grid-mode" ((ido-grid-mode ido-grid-mode-autoloads) (defvar ido-grid-mode nil "Non-nil if Ido-Grid mode is enabled.
See the `ido-grid-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `ido-grid-mode'.") (custom-autoload 'ido-grid-mode "ido-grid-mode" nil) (autoload 'ido-grid-mode "ido-grid-mode" "Makes ido-mode display candidates in a grid.

If called interactively, enable Ido-Grid mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

(fn &optional ARG)" t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ido-grid-mode" '("ido-"))) (provide 'ido-grid-mode-autoloads)) "idomenu" ((idomenu-autoloads idomenu) (autoload 'idomenu "idomenu" "Switch to a buffer-local tag from Imenu via Ido." t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "idomenu" '("idomenu--"))) (provide 'idomenu-autoloads)) "imenu-anywhere" ((imenu-anywhere-autoloads imenu-anywhere) (autoload 'imenu-anywhere "imenu-anywhere" "Go to imenu tag defined in all reachable buffers.
Reachable buffers are determined by applying functions in
`imenu-anywhere-buffer-filter-functions' to all buffers returned
by `imenu-anywhere-buffer-list-function'.

Add current point to the `xref' marker stack, which you can pop
later with `xref-pop-marker-stack'.

Sorting is done within each buffer and takes into account items'
length. Thus more recent buffers in `buffer-list' and shorter
entries have higher priority." t nil) (autoload 'ido-imenu-anywhere "imenu-anywhere" "IDO interface for `imenu-anywhere'.
This is a simple wrapper around `imenu-anywhere' which uses
`ido-completing-read' as `completing-read-function'. If you use
`ido-ubiquitous' you might be better off by using `ido-anywhere'
instead, but there should be little or no difference." t nil) (autoload 'ivy-imenu-anywhere "imenu-anywhere" "IVY interface for `imenu-anywhere'
This is a simple wrapper around `imenu-anywhere' which uses
`ivy-completing-read' as `completing-read-function'." t nil) (autoload 'helm-imenu-anywhere "imenu-anywhere" "`helm' interface for `imenu-anywhere'.
Sorting is in increasing length of imenu symbols within each
buffer.  The pyramidal view allows distinguishing different
buffers." t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "imenu-anywhere" '("helm-imenu-anywhere-candidates" "imenu-anywhere-"))) (provide 'imenu-anywhere-autoloads)) "selectrum" ((selectrum selectrum-autoloads) (defvar selectrum-complete-in-buffer t "If non-nil, use Selectrum for `completion-in-region'.
This option needs to be set before activating `selectrum-mode'.") (custom-autoload 'selectrum-complete-in-buffer "selectrum" t) (autoload 'selectrum-select-from-history "selectrum" "Submit or insert candidate from minibuffer history.
To insert the history item into the previous session use the
binding for `selectrum-insert-current-candidate'. To submit the
history item and exit use `selectrum-select-current-candidate'." t nil) (autoload 'selectrum-completing-read "selectrum" "Read choice using Selectrum. Can be used as `completing-read-function'.
For PROMPT, COLLECTION, PREDICATE, REQUIRE-MATCH, INITIAL-INPUT,
HIST, DEF, and INHERIT-INPUT-METHOD, see `completing-read'.

(fn PROMPT COLLECTION &optional PREDICATE REQUIRE-MATCH INITIAL-INPUT HIST DEF INHERIT-INPUT-METHOD)" nil nil) (autoload 'selectrum-completing-read-multiple "selectrum" "Read one or more choices using Selectrum.
Replaces `completing-read-multiple'. For PROMPT, TABLE,
PREDICATE, REQUIRE-MATCH, INITIAL-INPUT, HIST, DEF, and
INHERIT-INPUT-METHOD, see `completing-read-multiple'.

The option `selectrum-completing-read-multiple-show-help' can be
used to control insertion of additional usage information into
the prompt.

(fn PROMPT TABLE &optional PREDICATE REQUIRE-MATCH INITIAL-INPUT HIST DEF INHERIT-INPUT-METHOD)" nil nil) (autoload 'selectrum-completion-in-region "selectrum" "Complete in-buffer text using a list of candidates.
Can be used as `completion-in-region-function'. For START, END,
COLLECTION, and PREDICATE, see `completion-in-region'.

(fn START END COLLECTION PREDICATE)" nil nil) (autoload 'selectrum-read-buffer "selectrum" "Read buffer using Selectrum. Can be used as `read-buffer-function'.
Actually, as long as `selectrum-completing-read' is installed in
`completing-read-function', `read-buffer' already uses Selectrum.
Installing this function in `read-buffer-function' makes sure the
buffers are sorted in the default order (most to least recently
used) rather than in whatever order is defined by
`selectrum-preprocess-candidates-function', which is likely to be
less appropriate. It also allows you to view hidden buffers,
which is otherwise impossible due to tricky behavior of Emacs'
completion machinery. For PROMPT, DEF, REQUIRE-MATCH, and
PREDICATE, see `read-buffer'.

(fn PROMPT &optional DEF REQUIRE-MATCH PREDICATE)" nil nil) (autoload 'selectrum-read-file-name "selectrum" "Read file name using Selectrum. Can be used as `read-file-name-function'.
For PROMPT, DIR, DEFAULT-FILENAME, MUSTMATCH, INITIAL, and
PREDICATE, see `read-file-name'.

(fn PROMPT &optional DIR DEFAULT-FILENAME MUSTMATCH INITIAL PREDICATE)" nil nil) (autoload 'selectrum--fix-dired-read-dir-and-switches "selectrum" "Make \\[dired] do the \"right thing\" with its default candidate.
By default \\[dired] uses `read-file-name' internally, which
causes Selectrum to provide you with the first file inside the
working directory as the default candidate. However, it would
arguably be more semantically appropriate to use
`read-directory-name', and this is especially important for
Selectrum since this causes it to select the working directory
initially.

To test that this advice is working correctly, type \\[dired] and
accept the default candidate. You should have opened the working
directory in Dired, and not a filtered listing for the current
file.

This is an `:around' advice for `dired-read-dir-and-switches'.
FUNC and ARGS are standard as in any `:around' advice.

(fn FUNC &rest ARGS)" nil nil) (autoload 'selectrum-read-library-name "selectrum" "Read and return a library name.
Similar to `read-library-name' except it handles `load-path'
shadows correctly." nil nil) (autoload 'selectrum--fix-minibuffer-message "selectrum" "Ensure the cursor stays at the front of the minibuffer message.
This advice adjusts where the cursor gets placed for the overlay
of `minibuffer-message' and ensures the overlay gets displayed at
the right place without blocking the display of candidates.

To test that this advice is working correctly, type \\[find-file]
twice in a row with `enable-recursive-minibuffers' set to nil.
The overlay indicating that recursive minibuffers are not allowed
should appear right after the user input area, not at the end of
the candidate list and the cursor should stay at the front.

This is an `:around' advice for `minibuffer-message'. FUNC and
ARGS are standard as in all `:around' advice.

(fn FUNC &rest ARGS)" nil nil) (define-minor-mode selectrum-mode "Minor mode to use Selectrum for `completing-read'." :global t (if selectrum-mode (progn (selectrum-mode -1) (setq selectrum-mode t) (setq selectrum--old-completing-read-function (default-value 'completing-read-function)) (setq-default completing-read-function #'selectrum-completing-read) (setq selectrum--old-read-buffer-function (default-value 'read-buffer-function)) (setq-default read-buffer-function #'selectrum-read-buffer) (setq selectrum--old-read-file-name-function (default-value 'read-file-name-function)) (setq-default read-file-name-function #'selectrum-read-file-name) (setq selectrum--old-completion-in-region-function (default-value 'completion-in-region-function)) (when selectrum-complete-in-buffer (setq-default completion-in-region-function #'selectrum-completion-in-region)) (advice-add #'completing-read-multiple :override #'selectrum-completing-read-multiple) (advice-add 'dired-read-dir-and-switches :around #'selectrum--fix-dired-read-dir-and-switches) (advice-add 'read-library-name :override #'selectrum-read-library-name) (advice-add #'minibuffer-message :around #'selectrum--fix-minibuffer-message) (define-key minibuffer-local-map [remap previous-matching-history-element] 'selectrum-select-from-history)) (when (equal (default-value 'completing-read-function) #'selectrum-completing-read) (setq-default completing-read-function selectrum--old-completing-read-function)) (when (equal (default-value 'read-buffer-function) #'selectrum-read-buffer) (setq-default read-buffer-function selectrum--old-read-buffer-function)) (when (equal (default-value 'read-file-name-function) #'selectrum-read-file-name) (setq-default read-file-name-function selectrum--old-read-file-name-function)) (when (equal (default-value 'completion-in-region-function) #'selectrum-completion-in-region) (setq-default completion-in-region-function selectrum--old-completion-in-region-function)) (advice-remove #'completing-read-multiple #'selectrum-completing-read-multiple) (advice-remove 'dired-read-dir-and-switches #'selectrum--fix-dired-read-dir-and-switches) (advice-remove 'read-library-name #'selectrum-read-library-name) (advice-remove #'minibuffer-message #'selectrum--fix-minibuffer-message) (when (eq (lookup-key minibuffer-local-map [remap previous-matching-history-element]) #'selectrum-select-from-history) (define-key minibuffer-local-map [remap previous-matching-history-element] nil)))) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "selectrum" '("selectrum-"))) (provide 'selectrum-autoloads)) "rainbow-delimiters" ((rainbow-delimiters-autoloads rainbow-delimiters) (autoload 'rainbow-delimiters-mode "rainbow-delimiters" "Highlight nested parentheses, brackets, and braces according to their depth.

If called interactively, enable Rainbow-Delimiters mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

(fn &optional ARG)" t nil) (autoload 'rainbow-delimiters-mode-enable "rainbow-delimiters" "Enable `rainbow-delimiters-mode'." nil nil) (autoload 'rainbow-delimiters-mode-disable "rainbow-delimiters" "Disable `rainbow-delimiters-mode'." nil nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rainbow-delimiters" '("rainbow-delimiters-"))) (provide 'rainbow-delimiters-autoloads)) "dash" ((dash-autoloads dash) (autoload 'dash-fontify-mode "dash" "Toggle fontification of Dash special variables.

If called interactively, enable Dash-Fontify mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

Dash-Fontify mode is a buffer-local minor mode intended for Emacs
Lisp buffers.  Enabling it causes the special variables bound in
anaphoric Dash macros to be fontified.  These anaphoras include
`it', `it-index', `acc', and `other'.  In older Emacs versions
which do not dynamically detect macros, Dash-Fontify mode
additionally fontifies Dash macro calls.

See also `dash-fontify-mode-lighter' and
`global-dash-fontify-mode'.

(fn &optional ARG)" t nil) (put 'global-dash-fontify-mode 'globalized-minor-mode t) (defvar global-dash-fontify-mode nil "Non-nil if Global Dash-Fontify mode is enabled.
See the `global-dash-fontify-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-dash-fontify-mode'.") (custom-autoload 'global-dash-fontify-mode "dash" nil) (autoload 'global-dash-fontify-mode "dash" "Toggle Dash-Fontify mode in all buffers.
With prefix ARG, enable Global Dash-Fontify mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Dash-Fontify mode is enabled in all buffers where
`dash--turn-on-fontify-mode' would do it.
See `dash-fontify-mode' for more information on Dash-Fontify mode.

(fn &optional ARG)" t nil) (autoload 'dash-register-info-lookup "dash" "Register the Dash Info manual with `info-lookup-symbol'.
This allows Dash symbols to be looked up with \\[info-lookup-symbol]." t nil) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dash" '("!cdr" "!cons" "--" "->" "-a" "-butlast" "-c" "-d" "-e" "-f" "-gr" "-i" "-juxt" "-keep" "-l" "-m" "-no" "-o" "-p" "-r" "-s" "-t" "-u" "-value-to-list" "-when-let" "-zip" "dash-"))) (provide 'dash-autoloads)) "dired-hacks-utils" ((dired-hacks-utils dired-hacks-utils-autoloads) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dired-hacks-utils" '("dired-"))) (provide 'dired-hacks-utils-autoloads)) "dired-rainbow" ((dired-rainbow dired-rainbow-autoloads) (if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dired-rainbow" '("dired-rainbow-"))) (provide 'dired-rainbow-autoloads))))

#s(hash-table size 65 test eq rehash-size 1.5 rehash-threshold 0.8125 data (org-elpa #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 7 "melpa" nil "gnu-elpa-mirror" nil "el-get" nil "emacsmirror-mirror" nil "straight" nil "use-package" nil "bind-key" nil "vterm" nil "org-plus-contrib" `(org-plus-contrib :type git :repo "https://code.orgmode.org/bzg/org-mode.git" :local-repo "org" :depth full :pre-build ,(list (concat (when (eq system-type 'berkeley-unix) "g") "make") "autoloads" (concat "EMACS=" invocation-directory invocation-name)) :build (:not autoloads) :files (:defaults "lisp/*.el" ("etc/styles/" "etc/styles/*") "contrib/lisp/*.el") :includes org) "hyperbole" nil "projectile" nil "pkg-info" nil "epl" nil "cl-lib" nil "ido-vertical-mode" nil "all-the-icons" nil "general" nil "god-mode" nil "neotree" nil "jazz-theme" nil "smex" nil "amx" nil "s" nil "flx-ido" nil "flx" nil "ido-completing-read+" nil "seq" nil "memoize" nil "ido-grid-mode" nil "idomenu" nil "imenu-anywhere" nil "selectrum" nil "ido" nil "rainbow-delimiters" nil "dired-rainbow" nil "dash" nil "dired-hacks-utils" nil)) melpa #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 2 "gnu-elpa-mirror" nil "el-get" (el-get :type git :flavor melpa :files ("*.el" ("recipes" "recipes/el-get.rcp") "methods" "el-get-pkg.el") :host github :repo "dimitri/el-get") "emacsmirror-mirror" nil "straight" nil "use-package" (use-package :type git :flavor melpa :files (:defaults (:exclude "bind-key.el" "bind-chord.el" "use-package-chords.el" "use-package-ensure-system-package.el") "use-package-pkg.el") :host github :repo "jwiegley/use-package") "bind-key" (bind-key :type git :flavor melpa :files ("bind-key.el" "bind-key-pkg.el") :host github :repo "jwiegley/use-package") "vterm" (vterm :type git :flavor melpa :files ("*" (:exclude ".dir-locals.el" ".gitignore" ".clang-format" ".travis.yml") "vterm-pkg.el") :host github :repo "akermu/emacs-libvterm") "hyperbole" nil "projectile" (projectile :type git :flavor melpa :files ("projectile.el" "projectile-pkg.el") :host github :repo "bbatsov/projectile") "pkg-info" (pkg-info :type git :flavor melpa :host github :repo "emacsorphanage/pkg-info") "epl" (epl :type git :flavor melpa :host github :repo "cask/epl") "cl-lib" nil "ido-vertical-mode" (ido-vertical-mode :type git :flavor melpa :host github :repo "creichert/ido-vertical-mode.el") "all-the-icons" (all-the-icons :type git :flavor melpa :files (:defaults "data" "all-the-icons-pkg.el") :host github :repo "domtronn/all-the-icons.el") "general" (general :type git :flavor melpa :host github :repo "noctuid/general.el") "god-mode" (god-mode :type git :flavor melpa :host github :repo "emacsorphanage/god-mode") "neotree" (neotree :type git :flavor melpa :files (:defaults "icons" "neotree-pkg.el") :host github :repo "jaypei/emacs-neotree") "jazz-theme" (jazz-theme :type git :flavor melpa :host github :repo "donderom/jazz-theme") "smex" (smex :type git :flavor melpa :host github :repo "nonsequitur/smex") "amx" (amx :type git :flavor melpa :host github :repo "DarwinAwardWinner/amx") "s" (s :type git :flavor melpa :files ("s.el" "s-pkg.el") :host github :repo "magnars/s.el") "flx-ido" (flx-ido :type git :flavor melpa :files ("flx-ido.el" "flx-ido-pkg.el") :host github :repo "lewang/flx") "flx" (flx :type git :flavor melpa :files ("flx.el" "flx-pkg.el") :host github :repo "lewang/flx") "ido-completing-read+" (ido-completing-read+ :type git :flavor melpa :files ("ido-completing-read+.el" "ido-completing-read+-pkg.el") :host github :repo "DarwinAwardWinner/ido-completing-read-plus") "seq" nil "memoize" (memoize :type git :flavor melpa :host github :repo "skeeto/emacs-memoize") "ido-grid-mode" (ido-grid-mode :type git :flavor melpa :host github :repo "larkery/ido-grid-mode.el") "idomenu" (idomenu :type git :flavor melpa :host github :repo "birkenfeld/idomenu") "imenu-anywhere" (imenu-anywhere :type git :flavor melpa :host github :repo "vspinu/imenu-anywhere") "selectrum" (selectrum :type git :flavor melpa :host github :repo "raxod502/selectrum") "ido" nil "rainbow-delimiters" (rainbow-delimiters :type git :flavor melpa :host github :repo "Fanael/rainbow-delimiters") "dired-rainbow" (dired-rainbow :type git :flavor melpa :files ("dired-rainbow.el" "dired-rainbow-pkg.el") :host github :repo "Fuco1/dired-hacks") "dash" (dash :type git :flavor melpa :files ("dash.el" "dash.texi" "dash-pkg.el") :host github :repo "magnars/dash.el") "dired-hacks-utils" (dired-hacks-utils :type git :flavor melpa :files ("dired-hacks-utils.el" "dired-hacks-utils-pkg.el") :host github :repo "Fuco1/dired-hacks"))) el-get #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 1 "emacsmirror-mirror" nil "straight" nil "cl-lib" nil "seq" nil "ido" nil)) gnu-elpa-mirror #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 3 "emacsmirror-mirror" nil "straight" nil "hyperbole" (hyperbole :type git :host github :repo "emacs-straight/hyperbole" :files ("*" (:exclude ".git"))) "cl-lib" nil "seq" nil "ido" nil)) emacsmirror-mirror #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 2 "straight" (straight :type git :host github :repo "emacsmirror/straight") "cl-lib" nil "seq" nil "ido" nil))))

("org-elpa" "melpa" "gnu-elpa-mirror" "el-get" "emacsmirror-mirror" "straight" "emacs" "use-package" "bind-key" "vterm" "org-plus-contrib" "hyperbole" "projectile" "pkg-info" "epl" "cl-lib" "ido-vertical-mode" "all-the-icons" "general" "god-mode" "neotree" "jazz-theme" "smex" "amx" "s" "flx-ido" "flx" "ido-completing-read+" "seq" "memoize" "ido-grid-mode" "idomenu" "imenu-anywhere" "selectrum" "rainbow-delimiters" "dired-rainbow" "dash" "dired-hacks-utils" "ido")

t
