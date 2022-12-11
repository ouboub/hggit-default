# The HG's pull rebase and push again side
hg pull -u
hg up 0
hg phase -d -f
hg up tip
hg rebase -s . -d main
hg ci -m 'HG: Add make-rebase-forced-push.sh'
hg push -f
