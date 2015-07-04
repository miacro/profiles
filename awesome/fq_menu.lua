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
  { "steam", "steam"}
}

mymainmenu = awful.menu({ items = { 
  { "awesome", fq_awesomemenu, beautiful.awesome_icon },
  { "games", fq_gamesmenu },
  { "chromium", "chromium"},
  { "firefox", "firefox"},
  { "chrome", "google-chrome"},
  { "deadbeef", "deadbeef"},
  { "dolphin", "dolphin"},
  { "gwenview", "gwenview"},
}})


mylauncher = awful.widget.launcher({ 
  image = beautiful.awesome_icon,
  menu = mymainmenu 
})
