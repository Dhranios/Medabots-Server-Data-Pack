tag @s add me
execute if score @s TransactionValue >= @s Money run data merge block ~ ~ ~ {Text2:'{"score":{"name":"@a[tag=me]","objective":"TransactionValue"}}',Text3:'{"translate":"medabots_server:sign.automatic_transaction_machine.insufficient_funds"}'}

execute if score @s TransactionValue <= @s Money run data merge block ~ ~ ~ {Text2:'{"score":{"name":"@a[tag=me]","objective":"TransactionValue"}}',Text3:'{"translate":"medabots_server:sign.automatic_transaction_machine.withdrawn"}'}
tag @s remove me
execute if score @s TransactionValue <= @s Money at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:1,medabots_server:{id:"medabots_server:medallar"},display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.medallar"}'}}},Tags:["medallar_drop"],PickupDelay:1s}
execute if score @s TransactionValue <= @s Money at @s store result entity @e[type=minecraft:item,tag=medallar_drop,distance=..1,limit=1] Item.Count byte 1 run scoreboard players get @s TransactionValue
execute if score @s TransactionValue <= @s Money at @s run tag @e[type=minecraft:item,tag=medallar_drop,distance=..1,limit=1] remove medallar_drop
execute if score @s TransactionValue <= @s Money run scoreboard players operation @s Money -= @s TransactionValue