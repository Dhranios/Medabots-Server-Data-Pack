execute if entity @s[tag=!no_overwrite] as @a[tag=this_robattle] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
execute if entity @s[tag=!no_overwrite] run scoreboard players set @a[tag=this_robattle] MusicType 26
execute if entity @s[tag=!no_overwrite] at @e[tag=enemy_medabot,scores={State=2},tag=overwrite_robattle_music] run scoreboard players operation @a[tag=waiting_for_referee] MusicType = @e[tag=enemy_medabot,scores={State=2},tag=overwrite_robattle_music] MusicType
scoreboard players set @e[tag=this_robattle] State 1
data merge entity @s {Small:1b,Invisible:1b,ArmorItems:[{},{},{},{}]}
execute as @e[tag=!medabot,tag=this_robattle] run tag @s remove disabled
tag @e[tag=this_robattle] remove intro_message
tag @s add fully_done