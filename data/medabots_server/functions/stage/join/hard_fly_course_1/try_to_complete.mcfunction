scoreboard players set #temp NeededPlayers 9
scoreboard players operation #temp NeededPlayers -= @a[distance=..0.1,scores={StageIndex=0..},limit=1] StageIndex
execute if entity @a[distance=..0.1,scores={StageIndex=0..},limit=1] run scoreboard players remove #temp NeededPlayers 1

execute if score #temp NeededPlayers matches 8 run tellraw @s {"translate":"medabots_server:message.stage.fly_course.force_start","color":"green"}
execute if score #temp NeededPlayers matches 0 run data merge block -468 91 266 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/fly_course_no_race"}}'}
execute if score #temp NeededPlayers matches 0 run setblock -469 92 266 minecraft:redstone_block
execute if score #temp NeededPlayers matches 0 run data merge block -468 91 268 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/fly_course_currently_racing"}}',Text3:'{"translate":"medabots_server:sign.stage.fly_course.race"}'}
execute if score #temp NeededPlayers matches 0 run setblock -469 92 268 minecraft:redstone_block
execute if score #temp NeededPlayers matches 0 run function medabots_server:stage/sign/hard_fly_course_1/race_starting

scoreboard players reset #temp NeededPlayers