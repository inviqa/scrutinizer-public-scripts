#!/bin/bash
# Push mailcatcher php ini config
echo 'sendmail_path = '$(pwd)$'/bin/catchmail\nsmtp_port = 1025' | tee ~/.phpenv/versions/$(phpenv global)/etc/conf.d/sendmail.ini
# Install mailcatcher gem into bin/, caching gem install into .gems
mkdir bin .gems
gem install mailcatcher -v '~> 0.6.1' --no-rdoc --no-ri -i '.gems' -n 'bin'
# Run mailcatcher
bin/mailcatcher
