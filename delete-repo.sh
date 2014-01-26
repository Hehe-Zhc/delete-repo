#!/bin/sh

#
# NOTES: You must run the first command at the command line to get a proper OAuth token.
#

# 1) Create an OAuth token with multiple scopes. Enter password at prompt.
# curl -u USERNAME -X POST https://api.github.com/authorizations --data '{"scopes":["delete_repo", "user", "repo", "gist"]"}'

# 2) Optional: View OAuth tokens for this user. Enter password at prompt.
# curl -u USERNAME https://api.github.com/authorizations

# 3) Now we can programatically delete repositories with our OAuth token.
curl -X DELETE -H 'Authorization: token 00000000000000000000000000000000000000' https://api.github.com/repos/USERNAME/REPOSITORYNAME