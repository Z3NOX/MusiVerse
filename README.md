# MusiVerse Server

# Todo
[ ] Wishlist
[ ] Shutdown via URL

# How to add music sources

# Setup Knowledge
If you let jekyll run on the RPi, you have to substitute `bundler` commands by `bundle-2.5`

* install dependencies and run jekyll locally
  ```bash
  cd musiverse
  pacman -S ruby-bundler
  bundler install --path=.

  # show and update site continuously
  RUBYOPT='-W:no-deprecated' bundler exec jekyll serve --incremental
  # build site to _site
  bundler exec jekyll build
  ```

[just-the-docs DOC](https://pmarsceill.github.io/just-the-docs)
[jekyll usage](https://jekyllrb.com/docs/usage/)
