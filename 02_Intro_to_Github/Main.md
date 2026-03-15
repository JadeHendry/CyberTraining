# What is git? 

Git is a free, open-source, distributed version control system (VCS) that helps track changes in files and source code during software development. It is the most widely used tool for managing project history, facilitating collaboration among multiple developers, and allowing users to revert to previous versions if needed.

Github, Gitlab, and Bitbucket are some common tools that provide a user interface for git, fine grained controls for repos, and tools for continuous intetgration and continutous development. 

## Branching and Committing

Git provides a branching strucure in order for developers/contributors to work concurrently on a similar codebase. 

![Kali Download](img/git-branches-merge.png)

Typically, the base of the tree structure is a branch called main or master. In order to create a new branch, run:

`git checkout -b <BRANCH_NAME>`

This will create a new branch called BRANCH_NAME that you can work off of without interfeering with others' work. 

Once you have a change set that logically makes sense to save, you will create what is called a commit (one of the circle nodules in the above image). 

In order to add files to the commit, you will run: 

`git status`
`# This will show you what files have changed since your last commit` 
`git add <FILE>`

To add all files listed in the status command, run:

`git add --all` 
or 
`git add .`

Once you have added the files, they will be considered "staged" for commit. To see the staged files, rerun:

`git status`

To commit staged files, run: 

`git commit -m "COMMIT MESSAGE"`

## Creating a merge/pull request