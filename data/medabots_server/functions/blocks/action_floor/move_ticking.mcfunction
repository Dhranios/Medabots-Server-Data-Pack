teleport @s ~ ~0.056 ~
data merge entity @s[type=minecraft:area_effect_cloud] {Air:1}
data merge entity @s[type=minecraft:area_effect_cloud] {Air:0}
execute unless entity @s[tag=!ice_block,tag=!round_stone,tag=!balloon_bomb] as @e[distance=..0.4] unless entity @s[tag=!ice_block,tag=!round_stone,tag=!balloon_bomb] run data merge entity @s {Rotation:[0.0d,0.0d]}
execute unless entity @s[tag=!ice_block,tag=!round_stone,tag=!balloon_bomb] as @e[distance=..0.4,type=minecraft:shulker] unless entity @s[tag=!ice_block,tag=!round_stone,tag=!balloon_bomb] run effect give @s minecraft:invisibility 1000000 0 true
execute unless entity @s[tag=!ice_block,tag=!round_stone,tag=!balloon_bomb] as @e[distance=..0.4,type=minecraft:falling_block] unless entity @s[tag=!ice_block,tag=!round_stone,tag=!balloon_bomb] run data merge entity @s {Time:1,DropItem:0b}