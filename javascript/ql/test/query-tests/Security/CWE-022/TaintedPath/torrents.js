const parseTorrent = require('parse-torrent'),
      fs = require('fs');

function getTorrentData(dir, torrent){
	let name = parseTorrent(torrent).name, // $ Source
	    loc = dir + "/" + name + ".torrent.data";
	return fs.readFileSync(loc); // $ Alert
}
