# Set commit message to first arg passed to script, basic default if no arg.
# Call with $save_it.bash "A snappy commit message!"

if [ -z "$1" ];
then
    git_commit_comment="Commited with script save_it.bash, no commit arg passed."
else
    git_commit_comment=$1
fi

# This line turns on password retention for 15 mins, not sure if it makes sense
# to keep calling it but hey, maybe it'll work?

git config --global credential.helper cache

# Add all the files in the repo even if called from a directory below root.
git add --all :/

# Commit with variable set above.
git commit -m "$git_commit_comment"

# Push to remote (Not sure if this is the best way to be doing this...)
git push --all
