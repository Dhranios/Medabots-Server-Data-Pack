summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:5b,tag:{CustomModelData:1,medabots_server:{stage_item:1b,id:"medabots_server:medallar"},display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.medallar"}'}}},Tags:["medallar_drop","medabot_loot"],PickupDelay:1s,Age:5995s}
execute if entity @s[tag=enemy_medabot] run tag @e[type=minecraft:item,tag=medallar_drop,distance=..1,limit=1] add enemy_loot
execute if entity @s[tag=ally_medabot] run tag @e[type=minecraft:item,tag=medallar_drop,distance=..1,limit=1] add ally_loot
execute if entity @s[scores={Money=..4}] store result entity @e[type=minecraft:item,tag=medallar_drop,distance=..1,limit=1] Item.Count byte 1 run scoreboard players get @s Money
tag @e[type=minecraft:item,tag=medallar_drop,distance=..1,limit=1] remove medallar_drop
scoreboard players set @s[scores={Money=..4}] Money 0
scoreboard players remove @s[scores={Money=5..}] Money 5