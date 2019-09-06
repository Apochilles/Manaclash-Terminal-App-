# allows you to execute ./build.sh without the bash keyword
chmod +x ./build.sh
# copy across files to distribution directory
mkdir dist
cp ./Manaclash_application.rb ./dist
cp ./Card_list.csv ./dist
# install all gems
gem install pry
gem install colorize 
gem install artii
