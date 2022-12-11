# Setting hgrc file
    [paths]
    github = git@github.com:ouboub/hggit-default.git 
    gitlab = git@gitlab.com:kalthad/hggit-force.git 
    [git]
    # based on Manuel Jacobs patch 
    # changeset: 6942fb0a8c9d 
    # changeset: cd663e6379f0 
    # Manuel recommendation 
    # Important the default branch is not pushed!! 
    export-additional-refs.named-branch-heads:revset   = head() and not  branch('re:\Adefault\Z')
    # Alternatives
    # one of the following is ok, if you set up the git repo 
    # and want default to be the main branch not master or main 
    # export-additional-refs.named-branch-heads:revset   = head() and  branch('re:\Adefault\Z')
    # export-additional-refs.named-branch-heads:revset   = head() and not closed()
    export-additional-refs.named-branch-heads:template = refs/heads/{branch}
    use_namespaces = True 
    branch_bookmark_suffix=_bookmark
# Push to github
    hg push
    cd ..
    git clone git@github.com:ouboub/hggit-force.git
    cd hggit-force
# Git's side
    Git: cloned, first git commit
    git add .
    git commit -m 'Git: First git commit on the git main branch'
    git push
# The HG's pull rebase and push again side
    hg pull -u
    hg up 0
    hg phase -d -f
    hg up tip
    hg rebase -s . -d main
    hg ci -m 'HG: Add README.md'
    hg push -f
