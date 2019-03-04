execute if entity @s[nbt=!{Inventory:[{tag:{medabots_server:{activated:1b}}}]},tag=innocent] store result score #temp Money run clear @s minecraft:lapis_lazuli{medabots_server:{stage_item:1b}} 0
execute if score #temp Money matches 10 run function medabots_server:medaparts/enable_medaparts
execute if score #temp Money matches 10 run tellraw @s {"translate":"medabots_server:message.gamemode.murder_mystery.medaparts_enabled"}
scoreboard players reset #temp Money

scoreboard players add @s GamemodeTime 1
execute if entity @s[scores={GamemodeTime=200}] run scoreboard players set @s Battle 1
execute if entity @s[scores={GamemodeTime=201}] run scoreboard players set @s MaxHeadArmor 1
execute if entity @s[scores={GamemodeTime=201}] run scoreboard players set @s HeadArmor 1
execute if entity @s[scores={GamemodeTime=201}] run function medabots_server:gamemode/muder_mystery_start