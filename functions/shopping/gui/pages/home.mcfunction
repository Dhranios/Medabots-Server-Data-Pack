# rx
# the number indicates how many slots are there + 1
execute store result score @s Time run clear @s #all{gui:{}} 0
execute if score @s Time matches 3.. run function medabots_server:shopping/gui/clear

replaceitem entity @s hotbar.3 minecraft:green_wool{gui:{buy:1b},display:{Name:'{"text":"Buy","color":"gray","italic":"false"}'},Lore:['{"text":"Buy more items!","color":"light_purple"}']}
replaceitem entity @s hotbar.5 minecraft:red_wool{gui:{sell:1b},display:{Name:'{"text":"Sell","color":"gray","italic":"false"}'},Lore:['{"text":"Sell your items!","color":"light_purple"}']}