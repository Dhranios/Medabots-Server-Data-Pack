scoreboard players set @s Steps 10
effect give @a[distance=..10] minecraft:night_vision 1 0 true
execute unless data entity @s ArmorItems[3].tag.medabots_server.last_mirror run data modify entity @s ArmorItems[3] merge value {tag:{medabots_server:{last_mirror:{x:0,y:0,z:0}}}}
function medabots_server:items/medapart/laser/move