# Basic TTT Server
This Dockerfile sets up a TTT Server for GMod with content from TF2 and CSS. Also has some configuration to default myself to superadmin and setup some basic config on the server. Make sure to change the rcon password in server.cfg though.

Current environment variables required are:
- `WORKSHOP_COLLECTION_ID` The ID of the collection in the workshop where all your maps/lua addons are.
- `STEAM_API_KEY` Your steam account's API key
- `PLAYER_COUNT`
