# Tmux iMessage Plugin

Tmux plugin that shows the current unread message count for iMessage

**NOTE:** This is extremely experimental. It uses `ActiveRecord` to parse iMessage's sqlite database. YMMV.

### Script Dependencies

* Install ruby (tested on 2.0+)
* `gem install activerecord`
* Test by running `./scripts/messages`

### Usage

The following interpolations are made available for your statusline:

* `#{imessages}` - Count of unread iMessages

Here's the example in `.tmux.conf`:

    set -g status-right "#{imessages} Messages | %a %h-%d %H:%M "

### Screenshots

![status](/screenshots/imessages.png)<br/>

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'robhurring/tmux-imessage'

Hit `prefix + I` to fetch the plugin and source it.

### Manual Installation

Clone the repo:

    $ git clone https://github.com/robhurring/tmux-imessage ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/imessage.tmux

Reload TMUX environment:

    # type this in terminal
    $ tmux source-file ~/.tmux.conf

