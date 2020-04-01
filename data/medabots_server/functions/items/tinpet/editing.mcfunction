execute unless block ~ ~ ~ minecraft:air{loaded:true} at @s at @e[tag=editing_location,sort=nearest,limit=1,distance=..1] run teleport @s ~ ~ ~
execute at @s run kill @e[tag=editing_location,sort=nearest,limit=1,distance=..1]
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["editing_location"],Duration:2}

function medabots_server:animations/medabot