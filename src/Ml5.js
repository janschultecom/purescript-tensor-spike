var G = require("ml5");

exports._kmeans = function(data, options, callback) {
            G.kmeans(data, options, callback)
        };