# README

## Windows setup

### Install Ruby, then install Rails
1. Follow the steps found at https://techtalklaramie.com/hackathon/quick-introduction-to-rails/

### Get rid of old versions of bcrypt
For the commands which need to be run below, they should be executed using "Command Prompt with Ruby and Rails" or with CMD.

1. From the Ruby console, run `gem uninstall bcrypt`
2. Run `gem uninstall bcrypt-ruby`
3. Run `gem install bcrypt --platform=ruby`
5. Run `gem install bundler` to ensure you have the `bundle` command.
6. Run `bundle install`
7. Run `gem uninstall bcrypt`. You should see two options, the simple, native package that looks something like "bcrypt-3.1.11" and a (bad) Windows-specific version "bcrypt-3.1.11-x86-mingw32". Type the number of the Windows-specific version and then press enter.
8. Doing the above step may be necessary any time bundle is run, so keep this in mind.

**Sources:**
- https://github.com/codahale/bcrypt-ruby/issues/128#issuecomment-173361662
- http://stackoverflow.com/questions/42016137/bcrypt-ruby-on-rails-with-devise-windows-issue
