clear @s minecraft:diamond{medabots_server:{id:"medabots_server:medallar"}} 1
scoreboard players remove #temp Money 1
execute if score #temp Money matches 1.. run function medabots_server:shopping/automatic_transaction_machine/deposit_medallar