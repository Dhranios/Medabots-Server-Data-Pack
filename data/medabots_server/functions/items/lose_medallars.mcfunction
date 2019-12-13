summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:5b,tag:{CustomModelData:1,medabots_server:{stage_item:1b,id:"medabots_server:medallar"},display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.medallar"}'}}},Tags:["medallar_drop"],PickupDelay:1s,Age:5998s}
execute if entity @s[scores={Money=..4}] store result entity @e[type=minecraft:item,tag=medallar_drop,distance=..1,limit=1] Item.Count byte 1 run scoreboard players get @s Money
tag @e[type=minecraft:item,tag=medallar_drop,distance=..1,limit=1] remove medallar_drop
scoreboard players set @s[scores={Money=..4}] Money 0
scoreboard players remove @s[scores={Money=5..}] Money 5