execute unless entity @a[scores={Stage=43,Gamemode=0,StageIndex=-1},limit=1] run data merge block 30 59 3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute unless entity @a[scores={Stage=43,Gamemode=0,StageIndex=-1},limit=1] run setblock 30 60 1 minecraft:air
execute unless entity @a[scores={Stage=43,Gamemode=0,StageIndex=-1},limit=1] run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}
execute unless entity @a[scores={Stage=43,Gamemode=0,StageIndex=-1},limit=1] run data merge block 28 59 3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_8/play"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute unless entity @a[scores={Stage=43,Gamemode=0,StageIndex=-1},limit=1] as @a[scores={Stage=43,Gamemode=0}] run function medabots_server:gamemodes/default/reset
execute unless entity @a[scores={Stage=43,Gamemode=0,StageIndex=-1},limit=1] run scoreboard players reset @a[scores={Stage=43}] Stage

execute if entity @s[scores={StageIndex=-1}] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.lagdou_ruins_8"}]}
execute if entity @s[scores={StageIndex=-1}] run data merge block 30 59 3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[scores={StageIndex=-1}] run setblock 30 60 1 minecraft:air
teleport @s[scores={StageIndex=-1}] 35 34 39 90 0
execute if entity @s[scores={StageIndex=-1}] run data merge block 28 59 3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_8/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[scores={StageIndex=-1}] run setblock 28 60 1 minecraft:air
execute if entity @s[scores={StageIndex=-1}] as @a[scores={Stage=43,Gamemode=0,StageIndex=0..}] run function medabots_server:gamemodes/default/reset
execute if entity @s[scores={StageIndex=-1}] run scoreboard players reset @a[scores={Stage=43,StageIndex=0..}] Stage
execute if entity @s[scores={StageIndex=-1}] run tag @s add me
execute if entity @s[tag=me] run function medabots_server:gamemodes/default/reset
execute if entity @s[tag=me] run scoreboard players set @s Gamemode 0
execute if entity @s[tag=me] run tag @s remove me

scoreboard players operation #temp StageIndex = @s[scores={StageIndex=0..}] StageIndex
execute if entity @s[scores={StageIndex=0..}] as @a[scores={Stage=43,Gamemode=0}] if score @s StageIndex > #temp StageIndex run scoreboard players remove @s StageIndex 1
scoreboard players reset #temp StageIndex
execute if entity @s[scores={StageIndex=0..}] run function medabots_server:gamemodes/default/reset