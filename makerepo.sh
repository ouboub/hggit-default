#!/bin/sh
# makerepo-rebase.sh
# Created Sat Dec 10 2022 by Uwe Brauer oub@mat.ucm.es
# $Id$
# $Log$

# 1. The creation and pull step
hg init
echo "# Setting hgrc file" >> README.md
echo "    [paths]"     >> README.md
echo "    github = git@github.com:ouboub/hggit-default.git "     >> README.md
echo "    gitlab = git@gitlab.com:kalthad/hggit-force.git "     >> README.md
echo "[paths]"     >> hgrc
echo "github = git@github.com:ouboub/hggit-default.git " >> hgrc
echo "gitlab = git@gitlab.com:kalthad/hggit-force.git " >> hgrc
hg addremove
hg ci -m "HG: First commit: add path"
echo "    [git]"     >> README.md
echo "    # based on Manuel Jacobs patch "     >> README.md
echo "    # changeset: 6942fb0a8c9d "     >> README.md
echo "    # changeset: cd663e6379f0 "     >> README.md
echo "    # Manuel recommendation "     >> README.md
echo "    # Important the default branch is not pushed!! "     >> README.md
echo "    export-additional-refs.named-branch-heads:revset   = head() and not  branch('re:\Adefault\Z')"     >> README.md
echo "    # Alternatives"     >> README.md
echo "    # one of the following is ok, if you set up the git repo "     >> README.md
echo "    # and want default to be the main branch not master or main "     >> README.md
echo "    # export-additional-refs.named-branch-heads:revset   = head() and  branch('re:\Adefault\Z')"     >> README.md
echo "    # export-additional-refs.named-branch-heads:revset   = head() and not closed()"     >> README.md
echo "    export-additional-refs.named-branch-heads:template = refs/heads/{branch}"     >> README.md
echo "    use_namespaces = True "     >> README.md
echo "    branch_bookmark_suffix=_bookmark" >> README.md
hg ci -m "HG: Second commit: add git configuration"


echo "[git]" >> hgrc
echo "# based on Manuel Jacobs patch " >> hgrc
echo "# changeset: 6942fb0a8c9d " >> hgrc
echo "# changeset: cd663e6379f0 " >> hgrc
echo "# Manuel recommendation " >> hgrc
echo "export-additional-refs.named-branch-heads:revset   = head() and not  branch('re:\Adefault\Z')" >> hgrc
echo "# Important the default branch is not pushed!! "     >> hgrc
echo "# Alternatives" >> hgrc
echo "# one of the following is ok, if you set up the git repo "     >> hgrc
echo "# and want default to be the main branch not master or main "     >> hgrc
echo "# export-additional-refs.named-branch-heads:revset   = head() and  branch('re:\Adefault\Z')" >> hgrc
echo "# export-additional-refs.named-branch-heads:revset   = head() and not closed()" >> hgrc
echo "export-additional-refs.named-branch-heads:template = refs/heads/{branch}" >> hgrc
echo "use_namespaces = True " >> hgrc
echo "branch_bookmark_suffix=_bookmark" >> hgrc

hg ci -m "HG: Third commit: add git configuration to hgrc"

echo "# Push to github" >> README.md
echo "    hg push" >> README.md
echo "    cd .."     >> README.md
echo "    git clone git@github.com:ouboub/hggit-force.git"     >> README.md
echo "    cd hggit-force"     >> README.md
# 3. The pull rebase and push step


echo "# Git's side" >> git-clone-commit.sh
echo "# Git's side" >> README.md
echo "echo \"    Git: cloned, first git commit\" >> README.md"    >> git-clone-commit.sh
echo "git add ."     >> git-clone-commit.sh
echo "git commit -m 'Git: First git commit on the git main branch'"     >> git-clone-commit.sh
echo "git push" >> git-clone-commit.sh


echo "    Git: cloned, first git commit" >> README.md
echo "    git add ."     >> README.md
echo "    git commit -m 'Git: First git commit on the git main branch'"     >> README.md
echo "    git push" >> README.md

hg addremove
hg ci -m "HG: Forth commit: add git script"


# 3. The pull rebase and push step

echo "# The HG's pull rebase and push again side" >> make-rebase-forced-push.sh
echo "hg pull -u" >> make-rebase-forced-push.sh
echo "hg up 0" >> make-rebase-forced-push.sh
echo "hg phase -d -f" >> make-rebase-forced-push.sh
echo "hg up tip" >> make-rebase-forced-push.sh
echo "hg rebase -s . -d main"  >> make-rebase-forced-push.sh
echo "hg ci -m 'HG: Add make-rebase-forced-push.sh'" >> make-rebase-forced-push.sh
echo "hg push -f" >> make-rebase-forced-push.sh




echo "# The HG's pull rebase and push again side" >> README.md
echo "    hg pull -u" >> README.md
echo "    hg up 0" >> README.md
echo "    hg phase -d -f" >> README.md
echo "    hg up tip" >> README.md
echo "    hg rebase -s . -d main"  >> README.md
echo "    hg ci -m 'HG: Add README.md'" >> README.md
echo "    hg push -f" >> README.md

hg addremove
hg ci -m 'Finish construction scripts'




