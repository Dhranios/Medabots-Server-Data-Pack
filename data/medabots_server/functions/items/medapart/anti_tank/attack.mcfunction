# Cooldown before detecting
scoreboard players add @s DetectTime 1
execute if entity @e[tag=hostile,distance=..3] run tag @s[scores={DetectTime=30..},tag=hostile,tag=!ally_team,tag=!enemy_team] add detected
execute if entity @e[tag=hostile,distance=..3,tag=!ally_medabot] run tag @s[scores={detectTime=30..},tag=hostile,tag=ally_team] add detected
execute if entity @e[tag=hostile,distance=..3,tag=!enemy_medabot] run tag @s[scores={detectTime=30..},tag=hostile,tag=enemy_team] add detected

# Explode and destroy tank legs
execute if entity @s[tag=detected] run function medabots_server:items/medapart/anti_tank/hit