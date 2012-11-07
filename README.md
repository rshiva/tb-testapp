Album API
==========

```bash
bundle install
```

```bash
rake db:migrate
```
Getting Albums
```bash
curl -i http://localhost:3000/music_albums
```
Create an Album
```bash
curl -d '{"name": "Iron Maiden - Killer", "image_cover": "https://upload.wikimedia.org/wikipedia/en/thumb/b/b4/Iron_Maiden_Killers.jpg/220px-Iron_Maiden_Killers.jpg"}'  -X POST -H Content-Type:application/json http://localhost:3000/music_albums
```
Delete an Album
```bash
curl -X DELETE http://localhost:3000/music_albums/1
```
Updating an Album
```bash
curl -d '{"title": "Iron Maiden - Killers"}' -X PUT -H Content-Type:application/json http://localhost:3000/music_albums/1
```
