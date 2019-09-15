execute store result score #temp Money run clear @s minecraft:lapis_lazuli{medabots_server:{id:"medabots_server:medallar_cent"}} 0
tag @s add me
execute if score #temp Money matches ..99 run data merge block ~ ~ ~ {Text2:'{"score":{"name":"@a[tag=me]","objective":"TransactionValue"}}',Text3:'{"translate":"medabots_server:sign.automatic_transaction_machine.insufficient_funds"}'}

execute if score #temp Money matches 100.. run data merge block ~ ~ ~ {Text2:'{"score":{"name":"@a[tag=me]","objective":"TransactionValue"}}',Text3:'{"translate":"medabots_server:sign.automatic_transaction_machine.deposited"}'}
tag @s remove me
execute if score #temp Money matches 100.. run scoreboard players add @s Money 1
execute if score #temp Money matches 100.. run scoreboard players set #temp Money 100
execute if score #temp Money matches 100.. run clear @s minecraft:lapis_lazuli{medabots_server:{id:"medabots_server:medallar_cent"}} 100
scoreboard players reset #temp Money