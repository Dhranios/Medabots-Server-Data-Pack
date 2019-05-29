tag @s remove gui_clicked
execute if score @s GuiPage matches 2.. run function medabots_server:shopping/gui/detects/home_btn

# I didn't implement the medabots page so it's commented out
execute if entity @s[tag=salesman_trades,tag=!gui_clicked] run function medabots_server:shopping/gui/detects/salesman
execute if score @s[tag=!gui_clicked] GuiPage matches 1 run function medabots_server:shopping/gui/detects/home
  execute if score @s[tag=!gui_clicked] GuiPage matches 11 run function medabots_server:shopping/gui/detects/buy
# 	execute if score @s[tag=!gui_clicked] GuiPage matches 111 run function medabots_server:shopping/gui/detects/medabots
  execute if score @s[tag=!gui_clicked] GuiPage matches 12 run function medabots_server:shopping/gui/detects/sell
#  	execute if score @s[tag=!gui_clicked] GuiPage matches 121 run function medabots_server:shopping/gui/detects/medabots

function medabots_server:shopping/gui/clear