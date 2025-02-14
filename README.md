# DSCI310 Midterm Review

Home repo for review exercises for the DSCI 310 midterm!

Tutorial 2 definitions:

* `git branch`: Lists all the branches in a repository.
* `git switch`: If you choose which branch to switch to, it will jump to that branch.
* `git log --oneline --graph --all`: Gives a log of previous git commits in a graphical and simplified version.
* `git push origin <branch>`: pushes your commit to the remote repository. It is good practice to tell it where/remote (origin) and what/branch (main). Origin is a shortcut name for the http:/ link of your repo!
* `git pull origin main`: brings changes from the remote to the local machine.
* `git add <file>`: will add files to be staged to the commit
* `git commit -m "<message>"`: creates a commit/snapshot with the changes in the staging area, with the message you supplied.

> Now in new_branch we will add these definitions:

* **branch**: your own "playground" of sorts that allows you to work without impacting the main repo.
* **pull request**: is a proposal to merge changes from one branch into another (usually the main). You are requesting to pull the changes made from a branch onto the main repo. (Sort of like a reverse pull).
