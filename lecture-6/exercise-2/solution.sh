#! /bin/bash

# Visualize history as a graph
git log --all --graph --decorate

# The first commit in the graph shows who was the last person to modify README.md (Anish Athalye)
git log --all --graph --decorate README.md

# Commit message of the last modification for specific line of _confing.yml file
# Commit: a88b4eac326483e29bdac5ee0a39b180948ae7fc, message: Redo lectures as a collection
git blame _config.yml; git show a88b4eac
