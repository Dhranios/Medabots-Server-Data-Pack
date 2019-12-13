execute unless entity @a[scores={Stage=58,Gamemode=0,StageIndex=-1},limit=1] run data merge block -1893 52 -536 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute unless entity @a[scores={Stage=58,Gamemode=0,StageIndex=-1},limit=1] run setblock -1893 53 -538 minecraft:red_wool
execute unless entity @a[scores={Stage=58,Gamemode=0,StageIndex=-1},limit=1] run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}
execute unless entity @a[scores={Stage=58,Gamemode=0,StageIndex=-1},limit=1] run data merge block -1891 52 -536 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_out_e/play"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute unless entity @a[scores={Stage=58,Gamemode=0,StageIndex=-1},limit=1] as @a[scores={Stage=58,Gamemode=0}] run function medabots_server:gamemodes/default/reset
execute unless entity @a[scores={Stage=58,Gamemode=0,StageIndex=-1},limit=1] run scoreboard players reset @a[scores={Stage=58}] Stage

execute if entity @s[scores={StageIndex=-1}] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.ruins_out_e"}]}
execute if entity @s[scores={StageIndex=-1}] run data merge block -1893 52 -536 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[scores={StageIndex=-1}] run setblock -1893 53 -538 minecraft:red_wool
teleport @s[scores={StageIndex=-1}] -1896 37 -494 90 0
execute if entity @s[scores={StageIndex=-1}] run data merge block -1891 52 -536 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/ruins_out_e/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[scores={StageIndex=-1}] run setblock -1891 53 -538 minecraft:red_wool
execute if entity @s[scores={StageIndex=-1}] as @a[scores={Stage=58,Gamemode=0,StageIndex=0..}] run function medabots_server:gamemodes/default/reset
execute if entity @s[scores={StageIndex=-1}] run scoreboard players reset @a[scores={Stage=58,StageIndex=0..}] Stage
execute if entity @s[scores={StageIndex=-1}] run function medabots_server:gamemodes/default/reset

scoreboard players operation #temp StageIndex = @s[scores={StageIndex=0..}] StageIndex
execute if entity @s[scores={StageIndex=0..}] as @a[scores={Stage=58,Gamemode=0}] if score @s StageIndex > #temp StageIndex run scoreboard players remove @s StageIndex 1
scoreboard players reset #temp StageIndex
execute if entity @s[scores={StageIndex=0..}] run function medabots_server:gamemodes/default/reset