exports.collection = (title) ->
  (req, res) ->
    res.render 'album_collection', {title: title}

exports.error = (title, errnum) ->
  (req, res, next) ->
    res.render errnum, {title: title, errnum: errnum}, (err, html) ->
      return next err if err
      res.send errnum, html

exports.test = (title) ->
  (req, res) ->
    res.render 'test', {title: title}

exports.album = (title) ->
  (req, res) ->
    res.render 'album', {title: title}

exports.landing = (title) ->
  (req, res) ->
    res.render 'landing', {title: title}

exports.user = (title) ->
  (req, res) ->
    res.render 'user', {title: title}

exports.practiceJade = (title) ->
  (req, res) ->
    res.render 'practice', {title: title}

exports.practiceHtml = (title) ->
  (req, res) ->
    fs = require 'fs'
    path = require 'path'
    qualifiedPath = path.join __dirname, '..', 'views', 'practice.html'
    fs.readFile qualifiedPath, (err, html) ->
      res.writeHead 200, {"ContentType": "text/html"}
      res.write html
      res.end()