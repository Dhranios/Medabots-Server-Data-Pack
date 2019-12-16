execute unless entity @a[scores={Stage=3,Gamemode=1,StageIndex=-1},limit=1] run data merge block -468 91 266 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/fly_course_no_race"}}'}
execute unless entity @a[scores={Stage=3,Gamemode=1,StageIndex=-1},limit=1] run setblock -469 92 266 minecraft:redstone_block
execute unless entity @a[scores={Stage=3,Gamemode=1,StageIndex=-1},limit=1] run tellraw @s {"translate":"medabots_server:message.stage.fly_course.canceled","color":"green","with":[{"translate":"medabots_server:location.fly_course.hard"},{"text":"1"}]}
execute unless entity @a[scores={Stage=3,Gamemode=1,StageIndex=-1},limit=1] run data merge block -468 91 268 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/hard_fly_course_1/initiate_race"}}',Text3:'{"translate":"medabots_server:sign.stage.fly_course.race"}'}
execute unless entity @a[scores={Stage=3,Gamemode=1,StageIndex=-1},limit=1] as @a[scores={Stage=3,Gamemode=1}] run scoreboard players operation @s Money += @s PayedFee
execute unless entity @a[scores={Stage=3,Gamemode=1,StageIndex=-1},limit=1] as @a[scores={Stage=3,Gamemode=1}] run function medabots_server:gamemodes/fly_course/reset

execute if entity @s[scores={StageIndex=-1}] run tellraw @a {"translate":"medabots_server:message.stage.fly_course.canceled","color":"green","with":[{"translate":"medabots_server:location.fly_course.hard"},{"text":"1"}]}
execute if entity @s[scores={StageIndex=-1}] run data merge block -468 91 266 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/fly_course_no_race"}}'}
execute if entity @s[scores={StageIndex=-1}] run setblock -469 92 266 minecraft:redstone_block
execute if entity @s[scores={StageIndex=-1}] run data merge block -468 91 268 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/hard_fly_course_1/initiate_race"}}',Text3:'{"translate":"medabots_server:sign.stage.fly_course.race"}'}
execute if entity @s[scores={StageIndex=-1}] as @a[scores={Stage=3,Gamemode=1}] run scoreboard players operation @s Money += @s PayedFee
execute if entity @s[scores={StageIndex=-1}] as @a[scores={Stage=3,Gamemode=1}] run function medabots_server:gamemodes/fly_course/reset

scoreboard players operation #temp StageIndex = @s[scores={StageIndex=0..}] StageIndex
execute if entity @s[scores={StageIndex=0..}] as @a[scores={Stage=3,Gamemode=1}] if score @s StageIndex > #temp StageIndex run scoreboard players remove @s StageIndex 1
scoreboard players reset #temp StageIndex
scoreboard players operation @s[scores={StageIndex=0..}] Money += @s PayedFee
tellraw @s[scores={StageIndex=0..}] {"translate":"medabots_server:message.stage.fly_course.canceled_join","color":"green"}
execute if entity @s[scores={StageIndex=0..}] run function medabots_server:gamemodes/fly_course/reset