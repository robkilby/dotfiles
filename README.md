dotfiles
===================

Prerequisites
-------------

Install the [laptop script](https://github.com/robkilby/laptop) for your
platform.

Install
-------

Clone onto your Dropbox:

    git clone git://github.com/robkilby/dotfiles.git

Install:

    Dropbox/dotfiles/setup

Update:

You can safely run `dotfiles/update` multiple times to update:

    dotfiles/update

Make your own customisations
----------------------------

Put your customisations in dotfiles appended with `.local` and place in a
dotfiles-local folder in your Dropbox. The next time you update, these will be
detected and symlinked.

* `~/Dropbox/dotfiles-local/aliases.local`
* `~/Dropbox/dotfiles-local/gitconfig.local`
* `~/Dropbox/dotfiles-local/gvimrc.local`
* `~/Dropbox/dotfiles-local/tmux.conf.local`
* `~/Dropbox/dotfiles-local/vimrc.local`
* `~/Dropbox/dotfiles-local/vimrc.bundles.local`
* `~/Dropbox/dotfiles-local/zshrc.local`

For example, your `~/Dropbox/dotfiles-local/aliases.local` might look like this:

    # Productivity
    alias todo='$EDITOR ~/.todo'

Your `~/Dropbox/dotfiles-local/gitconfig.local` might look like this:

    [alias]
      l = log --pretty=colored
    [pretty]
      colored = format:%Cred%h%Creset %s %Cgreen(%cr) %C(bold blue)%an%Creset
    [user]
      name = Dan Croak
      email = dan@thoughtbot.com

Your `~/Dropbox/dotfiles-local/zshrc.local` might look like this:

    # recommended by brew doctor
    export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

Your `~/Dropbox/dotfiles-local/vimrc.bundles.local` might look like this:

    Plugin 'Lokaltog/vim-powerline'
    Plugin 'stephenmckinney/vim-solarized-powerline'

What's in it?
-------------

[vim](http://www.vim.org/) configuration:

* [Ctrl-P](https://github.com/kien/ctrlp.vim) for fuzzy file/buffer/tag finding.
* [Rails.vim](https://github.com/tpope/vim-rails) for enhanced navigation of
  Rails file structure via `gf` and `:A` (alternate), `:Rextract` partials,
  `:Rinvert` migrations, etc.
* Run [RSpec](https://www.relishapp.com/rspec) specs from vim.
* Set `<leader>` to a single space.
* Switch between the last two files with space-space.
* Syntax highlighting for CoffeeScript, Textile, Cucumber, Haml, Markdown, and
  HTML.
* Use [Ag](https://github.com/ggreer/the_silver_searcher) instead of Grep when
  available.
* Use [Exuberant Ctags](http://ctags.sourceforge.net/) for tab completion.
* Use [GitHub color scheme](https://github.com/croaky/vim-colors-github).
* Use [Vundle](https://github.com/gmarik/Vundle.vim) to manage plugins.

[tmux](http://robots.thoughtbot.com/a-tmux-crash-course)
configuration:

* Improve color resolution.
* Remove administrative debris (session name, hostname, time) in status bar.
* Set prefix to `Ctrl+a` (like GNU screen).
* Soften status bar color from harsh green to light gray.

[git](http://git-scm.com/) configuration:

* Adds a `create-branch` alias to create feature branches.
* Adds a `delete-branch` alias to delete feature branches.
* Adds a `merge-branch` alias to merge feature branches into master.
* Adds an `up` alias to fetch and rebase `origin/master` into the feature
  branch. Use `git up -i` for interactive rebases.

[Ruby](https://www.ruby-lang.org/en/) configuration:

* Add trusted binstubs to the `PATH`.
* Load rbenv into the shell, adding shims onto our `PATH`.

Shell aliases and scripts:

* `b` for `bundle`.
* `g` with no arguments is `git status` and with arguments acts like `git`.
* `git-churn` to show churn for the files changed in the branch.
* `m` for `rake db:migrate && rake db:rollback && rake db:migrate && rake db:test:prepare`.
* `mcd` to make a directory and change into it.
* `replace foo bar **/*.rb` to find and replace within a given list of files.
* `rk` for `rake`.
* `tat` to attach to tmux session named the same as the current directory.
* `v` for `$VISUAL`.

Credits
-------

Thank you, [contributors](https://github.com/thoughtbot/dotfiles/contributors)!
Also, thank you to Corey Haines, Gary Bernhardt, and others for sharing your
dotfiles and other shell scripts from which we derived inspiration for items
in this project.

![thoughtbot](http://thoughtbot.com/images/tm/logo.png)

Dotfiles is maintained by [thoughtbot, inc](http://thoughtbot.com/community)
The names and logos for thoughtbot are trademarks of thoughtbot, inc.

Dotfiles is © 2009-2014 thoughtbot, inc. It is free software and may be
redistributed under the terms specified in the [LICENSE](LICENSE) file.
