PENIS=$(git -C ~/Coding/Terminaleinstellungen remote update > /dev/null)
UPSTREAM=${1:-'@{u}'}
LOCAL=$(git -C ~/Coding/Terminaleinstellungen rev-parse @)
REMOTE=$(git -C ~/Coding/Terminaleinstellungen rev-parse "$UPSTREAM")
BASE=$(git -C ~/Coding/Terminaleinstellungen merge-base @ "$UPSTREAM")

if [ $LOCAL = $REMOTE ]; then
    echo "Up-to-date"
elif [ $LOCAL = $BASE ]; then
    echo "Need to pull"
elif [ $REMOTE = $BASE ]; then
    echo "Need to push"
else
    echo "Diverged"
fi
