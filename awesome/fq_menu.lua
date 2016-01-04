-- Standard awesome library
local wibox = require("wibox")
local awful = require("awful")
local beautiful = require("beautiful")

-- {{{ Menu
-- Create a laucher widget and a main menu
fq_awesomemenu = {
  { "manual", terminal .. " -e man awesome" },
  { "edit config", editor_cmd .. " " .. awesome.conffile },
  { "restart", awesome.restart },
  { "quit", awesome.quit }
}

fq_gamesmenu = {
  { "Battle.net", "wine /home/fq/games/Battle.net/Battle.net.exe"},
  { "steam", "steam"},
  { "minecraft", "java -jar /home/fq/.minecraft/launcher.jar"}
}

fq_audiomenu = {
  { "deadbeef", "deadbeef"},
  { "audacious", "audacious"},
}

mymainmenu = awful.menu({ items = { 
  { "awesome", fq_awesomemenu, beautiful.awesome_icon },
  { "games", fq_gamesmenu },
  { "audio", fq_audiomenu },
--  { "chromium", "chromium"},
  { "chrome", "google-chrome-stable"},
  { "firefox", "firefox"},
  { "open terminal", terminal },
  { "nautilus", "nautilus"},
  { "dolphin", "dolphin"},
  { "gwenview", "gwenview"},
  { "volume", "kmix"},
}})


mylauncher = awful.widget.launcher({ 
  image = beautiful.awesome_icon,
  menu = mymainmenu 
})
