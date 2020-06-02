scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1}] run teleport @s ~ ~3.6 ~
execute if entity @s[scores={AnimationProg=1}] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=1}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=2..3}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=4..5}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=6..7}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=8..9}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=10..11}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=12..13}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=14..15}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=16..17}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=18..19}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=20..21}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=22..23}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=24..25}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=26..27}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=28..29}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=30..31}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=32..33}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=34..35}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=36..37}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=38..39}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 10
scoreboard players reset #temp Time