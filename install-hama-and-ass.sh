echo "Beginning Install"

docker stop plex
cd '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Plug-ins'
git clone https://github.com/ZeroQI/Hama.bundle.git
chown -R 1000:1000 '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Plug-ins/Hama.bundle'
chmod 775 -R '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Plug-ins/Hama.bundle'

mkdir -p '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Scanners/Series'
wget -O '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Scanners/Series/Absolute Series Scanner.py' https://raw.githubusercontent.com/ZeroQI/Absolute-Series-Scanner/master/Scanners/Series/Absolute%20Series%20Scanner.py
chown -R 1000:1000 '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Scanners'
chmod 775 -R '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Scanners'

mkdir -p '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Plug-in Support/Data/com.plexapp.agents.hama/DataItems/AniDB'
mkdir -p '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Plug-in Support/Data/com.plexapp.agents.hama/DataItems/Plex'
mkdir -p '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Plug-in Support/Data/com.plexapp.agents.hama/DataItems/OMDB'
mkdir -p '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Plug-in Support/Data/com.plexapp.agents.hama/DataItems/TMDB'
mkdir -p '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Plug-in Support/Data/com.plexapp.agents.hama/DataItems/TVDB/blank'
mkdir -p '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Plug-in Support/Data/com.plexapp.agents.hama/DataItems/TVDB/_cache/fanart/original'
mkdir -p '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Plug-in Support/Data/com.plexapp.agents.hama/DataItems/TVDB/episodes'
mkdir -p '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Plug-in Support/Data/com.plexapp.agents.hama/DataItems/TVDB/fanart/original'
mkdir -p '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Plug-in Support/Data/com.plexapp.agents.hama/DataItems/TVDB/fanart/vignette'
mkdir -p '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Plug-in Support/Data/com.plexapp.agents.hama/DataItems/TVDB/graphical'
mkdir -p '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Plug-in Support/Data/com.plexapp.agents.hama/DataItems/TVDB/posters'
mkdir -p '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Plug-in Support/Data/com.plexapp.agents.hama/DataItems/TVDB/seasons'
mkdir -p '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Plug-in Support/Data/com.plexapp.agents.hama/DataItems/TVDB/seasonswide'
mkdir -p '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Plug-in Support/Data/com.plexapp.agents.hama/DataItems/TVDB/text'
mkdir -p '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Plug-in Support/Data/com.plexapp.agents.hama/DataItems/FanartTV'
chown -R 1000:1000 '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Plug-in Support/Data/com.plexapp.agents.hama'
chmod 775 -R '/opt/appdata/plex/database/Library/Application Support/Plex Media Server/Plug-in Support/Data/com.plexapp.agents.hama'
docker start plex

echo "Finished Installation"
