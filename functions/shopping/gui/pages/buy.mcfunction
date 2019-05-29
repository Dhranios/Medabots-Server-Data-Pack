# rx
# the number indicates how many slots are there + 1 (don't forget bout the home btn)
execute store result score @s gui.temp run clear @s #all{gui:{}} 0
execute if score @s gui.temp matches 5.. run function medabots_server:shopping/gui/clear

replaceitem entity @s hotbar.3 minecraft:white_concrete{gui:{expresso:1b},display:{Name:'{"text":"Expresso","color":"gray","italic":"false"}'},Lore:['{"text":"Steamy!","color":"light_purple"}']}
replaceitem entity @s hotbar.4 minecraft:red_concrete{gui:{sunglasses:1b},display:{Name:'{"text":"Sunglasses","color":"gray","italic":"false"}'},Lore:['{"text":"Cool shades bro!","color":"light_purple"}']}
replaceitem entity @s hotbar.5 minecraft:light_blue_concrete{gui:{crown:1b},display:{Name:'{"text":"???","color":"gray","italic":"false"}'},Lore:['{"text":"Wonder what this is...","color":"light_purple"}']}