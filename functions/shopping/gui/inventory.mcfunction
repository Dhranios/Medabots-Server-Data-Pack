# Rx on 05/08/19

execute store result score @s GuiSlots run data get entity @s Inventory
# debug slots
# execute unless score @s GuiSlots = @s GuiPrevSlots run tellraw @a [{"score":{"name":"shraavan97", "objective": "GuiSlots"},"color":"gold"},{"text":" "},{"score":{"name":"shraavan97", "objective": "GuiPrevSlots"},"color":"dark_purple"}]
execute if score @s GuiSlots < @s GuiPrevSlots run function medabots_server:shopping/gui/detect

# I didn't implement the medabots page so it's commented out
execute if score @s GuiPage matches 1 run function medabots_server:shopping/gui/pages/home
  execute if score @s GuiPage matches 11 run function medabots_server:shopping/gui/pages/buy
#   execute if score @s GuiPage matches 111 run function medabots_server:shopping/gui/pages/medabots
  execute if score @s GuiPage matches 12 run function medabots_server:shopping/gui/pages/sell
#  	execute if score @s GuiPage matches 121 run function medabots_server:shopping/gui/pages/medabots

execute if score @s GuiPage matches 2.. run function medabots_server:shopping/gui/pages/home_btn

execute store result score @s GuiPrevSlots run data get entity @s Inventory