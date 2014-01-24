#!/bin/sh

#
# NOTES: You must run the first two commands at the command line to get a proper OAuth token.
#

# Create an OAuth token with multiple scopes. Enter password at prompt.
# curl -u jasoncurran215 -X POST https://api.github.com/authorizations --data '{"scopes":["delete_repo", "user", "repo", "gist"]"}'

# View OAuth tokens for this user. Enter password at prompt.
# curl -u jasoncurran215 https://api.github.com/authorizations

# Now we can programatically delete repositories with our OAuth token.
curl -X DELETE -H 'Authorization: token 00000000000000000000000000000000000000' https://api.github.com/repos/jasoncurran215/REPOSITORYNAME