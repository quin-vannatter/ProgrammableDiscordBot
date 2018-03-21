cd ProgrammableDiscordBot/src
npm install

sed -i s/\{botToken\}/$BOT_TOKEN/ config.json
sed -i s/\{masterUserID\}/$MASTER_USER_ID/ config.json

if [[ ! -e "approvedIds.json" ]]; then
    echo "[]" > approvedIDs.json
fi

if [[ ! -e "state.js" ]]; then
    touch state.js
fi

if [[ ! -e "stateDump.js" ]]; then
    touch stateDump.js
fi

forever index.js > log.txt