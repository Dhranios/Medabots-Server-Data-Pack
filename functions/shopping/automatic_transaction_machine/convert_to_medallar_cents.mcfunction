tag @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:medallar"}}}]}] add convert
tag @s add me
execute if entity @s[tag=!convert] run data merge block ~ ~ ~ {Text2:'{"score":{"name":"@a[tag=me]","objective":"TransactionValue"}}',Text3:'{"translate":"medabots_server:sign.automatic_transaction_machine.insufficient_funds"}'}

execute if entity @s[tag=convert] run data merge block ~ ~ ~ {Text2:'{"score":{"name":"@a[tag=me]","objective":"TransactionValue"}}',Text3:'{"translate":"medabots_server:sign.automatic_transaction_machine.converted"}'}
tag @s remove me
execute if entity @s[tag=convert] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lapis_lazuli",Count:100b,tag:{CustomModelData:1,medabots_server:{id:"medabots_server:medallar_cent"},display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.medallar_cent"}'}}},PickupDelay:1s}
execute if entity @s[tag=convert] run clear @s minecraft:diamond{medabots_server:{id:"medabots_server:medallar"}} 1
tag @s remove convert