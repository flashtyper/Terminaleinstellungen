PENIS=$(git -C ~/Coding/Terminaleinstellungen remote update > /dev/null)
UPSTREAM=${1:-'@{u}'}
LOCAL=$(git -C ~/Coding/Terminaleinstellungen rev-parse @)
REMOTE=$(git -C ~/Coding/Terminaleinstellungen rev-parse "$UPSTREAM")
BASE=$(git -C ~/Coding/Terminaleinstellungen merge-base @ "$UPSTREAM")

if [ $LOCAL = $REMOTE ]; then
    echo "Terminaleinstellungen Repo is Up-to-date"
elif [ $LOCAL = $BASE ]; then
    echo "Terminaleinstellungen Repo needs a pull"
elif [ $REMOTE = $BASE ]; then
    echo "Terminaleinstellungen Repo needs a push"
else
    echo "Terminaleinstellungen Repo is fucked up (diverged)"
fi
