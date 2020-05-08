scoreboard players set @s[scores={AnimationProg=100}] AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=20..79}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 36
scoreboard players reset #temp Time
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=80..85}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 8
execute if entity @s[scores={AnimationProg=85..94}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 8
execute if entity @s[scores={AnimationProg=95..100}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 8
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=..21}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^-1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=22..23}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=24..26}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^-1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=27..28}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=29..31}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^-1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=32..33}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=34..36}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^-1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=37..38}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=39..41}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^-1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=32..43}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=44..46}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^-1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=47..48}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=49..51}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^-1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=52..53}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=54..56}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^-1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=57..58}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=59..61}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^-1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=62..63}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=64..66}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^-1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=67..68}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=69..71}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^-1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=72..73}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=74..76}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^-1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=77..78}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^1.3 ^0.3 ^
execute if entity @s[scores={AnimationProg=79..}] at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^-1.3 ^0.3 ^
tag @s[scores={AnimationProg=100}] remove spasm