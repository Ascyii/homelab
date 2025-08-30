user="jonas"

docker run --rm -it -v maddy_maddydata:/data foxcpp/maddy:0.7 creds create $user@hahn1.one
docker run --rm -it -v maddy_maddydata:/data foxcpp/maddy:0.7 imap-acct create $user@hahn1.one
