scoreboard players set @s[scores={AnimationProg=80}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=5..9}] run teleport @s ~ ~0.1 ~
execute if entity @s[scores={AnimationProg=15..19}] run teleport @s ~ ~0.1 ~
execute if entity @s[scores={AnimationProg=25..29}] run teleport @s ~ ~0.1 ~
execute if entity @s[scores={AnimationProg=35..39}] run teleport @s ~ ~0.1 ~
execute if entity @s[scores={AnimationProg=45..49}] run teleport @s ~ ~0.1 ~
execute if entity @s[scores={AnimationProg=55..59}] run teleport @s ~ ~0.1 ~
execute if entity @s[scores={AnimationProg=65..69}] run teleport @s ~ ~0.1 ~
execute if entity @s[scores={AnimationProg=75..79}] run teleport @s ~ ~0.1 ~
scoreboard players reset #temp Time