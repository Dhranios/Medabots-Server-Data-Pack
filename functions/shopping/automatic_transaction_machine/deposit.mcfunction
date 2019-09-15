execute store result score #temp Money run clear @s minecraft:diamond{medabots_server:{id:"medabots_server:medallar"}} 0

tag @s add me
execute if score @s TransactionValue >= #temp Money run data merge block ~ ~ ~ {Text2:'{"score":{"name":"@a[tag=me]","objective":"TransactionValue"}}',Text3:'{"translate":"medabots_server:sign.automatic_transaction_machine.insufficient_funds"}'}

execute if score @s TransactionValue <= #temp Money run data merge block ~ ~ ~ {Text2:'{"score":{"name":"@a[tag=me]","objective":"TransactionValue"}}',Text3:'{"translate":"medabots_server:sign.automatic_transaction_machine.deposited"}'}
tag @s remove me
execute if score @s TransactionValue <= #temp Money run scoreboard players operation @s Money += @s TransactionValue
execute if score @s TransactionValue <= #temp Money run scoreboard players operation #temp Money = @s TransactionValue
execute if score @s TransactionValue <= #temp Money run function medabots_server:shopping/automatic_transaction_machine/deposit_medallar
scoreboard players reset #temp Money