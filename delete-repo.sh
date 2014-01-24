#!/bin/sh

# Create an OAuth token with multiple scopes. Enter password at prompt.
curl -u jasoncurran215 -X POST https://api.github.com/authorizations --data '{"scopes":["delete_repo", "user", "repo", "gist"]"}'

# View OAuth tokens for this user. Enter password at prompt.
curl -u jasoncurran215 https://api.github.com/authorizations

# Now we can programatically delete repositories with our OAuth token.
curl -X DELETE -H 'Authorization: token 754c997eb93fcae29a9ca1e7ea2932eab49c17f8' https://api.github.com/repos/jasoncurran215/REPOSITORYNAME


#
