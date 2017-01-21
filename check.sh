echo "Checking $1"
if cd "$1"
  # might be empty dir instead of proper submodule
  then if [ -f .git ]
    then
      git fetch --quiet && git reset --quiet --hard origin/HEAD
  fi
fi

if [ $? != 0 ]
then
  echo " ** Failed ** $1" && false
fi
