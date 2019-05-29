# rx
# the number indicates how many slots are there + 1 (don't forget bout the home btn)
execute store result score @s Time run clear @s #all{gui:{}} 0
execute if score @s Time matches 5.. run function medabots_server:shopping/gui/clear

replaceitem entity @s hotbar.3 minecraft:yellow_concrete{gui:{item1:1b},medabots_server:{kill:1b},display:{Name:'{"text":"Example 1","color":"gray","italic":"false"}'},Lore:['{"text":"Steamy!","color":"light_purple"}']}
replaceitem entity @s hotbar.4 minecraft:magenta_concrete{gui:{item2:1b},medabots_server:{kill:1b},display:{Name:'{"text":"Example 2","color":"gray","italic":"false"}'},Lore:['{"text":"Cool shades bro!","color":"light_purple"}']}
replaceitem entity @s hotbar.5 minecraft:blue_concrete{gui:{item3:1b},medabots_server:{kill:1b},display:{Name:'{"text":"??? Example 3","color":"gray","italic":"false"}'},Lore:['{"text":"Wonder what this is...","color":"light_purple"}']}