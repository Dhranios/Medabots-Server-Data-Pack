execute unless entity @a[scores={Stage=3,Gamemode=1,StageIndex=-1},limit=1] run data merge block -468 91 266 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/fly_course_no_race"}}'}
execute unless entity @a[scores={Stage=3,Gamemode=1,StageIndex=-1},limit=1] run setblock -469 92 266 minecraft:stone_button[face=wall,facing=north,powered=true]
execute unless entity @a[scores={Stage=3,Gamemode=1,StageIndex=-1},limit=1] run tellraw @s {"translate":"medabots_server:message.stage.fly_course.canceled","color":"green","with":[{"translate":"medabots_server:location.hard_fly_course_1"}]}
execute unless entity @a[scores={Stage=3,Gamemode=1,StageIndex=-1},limit=1] run data merge block -468 91 268 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/hard_fly_course_1/initiate_race"}}',Text3:'{"translate":"medabots_server:sign.stage.fly_course.race"}'}
execute unless entity @a[scores={Stage=3,Gamemode=1,StageIndex=-1},limit=1] as @a[scores={Stage=3,Gamemode=1}] run scoreboard players operation @s Money += @s PayedFee
execute unless entity @a[scores={Stage=3,Gamemode=1,StageIndex=-1},limit=1] as @a[scores={Stage=3,Gamemode=1}] run function medabots_server:gamemodes/fly_course/reset

execute at @s unless entity @s[scores={Stage=3,Gamemode=1,StageIndex=-1}] if entity @s[gamemode=adventure,scores={Dialog=0}] unless score @s Money >= @a[scores={Stage=3,Gamemode=1,StageIndex=-1},limit=1] FlyCourseFee run tellraw @s {"translate":"medabots_server:message.stage.fly_course.no_money","color":"green"}

execute at @s unless entity @s[scores={Stage=3,Gamemode=1,StageIndex=-1}] if entity @s[gamemode=adventure,scores={Dialog=0}] if score @s Money >= @a[scores={Stage=3,Gamemode=1,StageIndex=-1},limit=1] FlyCourseFee run function medabots_server:stage/join/hard_fly_course_1/join
tellraw @s[gamemode=adventure,scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}

execute if entity @s[scores={Stage=3,Gamemode=1,StageIndex=-1}] if entity @a[scores={Stage=3,Gamemode=1,StageIndex=0},limit=1] run function medabots_server:stage/join/hard_fly_course_1/force_start