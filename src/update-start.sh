if [[ ! -d "ProgrammableDiscordBot" ]]; then
    git clone https://github.com/yanisin13/ProgrammableDiscordBot.git
fi

cd ProgrammableDiscordBot
git pull

/bin/bash -c '/start.sh'