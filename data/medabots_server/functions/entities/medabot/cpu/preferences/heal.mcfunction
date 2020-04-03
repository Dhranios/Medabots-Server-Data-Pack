tag @s remove preference_heal
tag @s[scores={HeadPer=..50}] add preference_heal

execute if entity @e[scores={HeadPer=..50},tag=enemy_medabot,distance=..10,limit=1] run tag @s[tag=enemy_medabot] add preference_heal

execute if entity @e[scores={HeadPer=..50},tag=ally_medabot,distance=..10,limit=1] run tag @s[tag=ally_medabot] add preference_heal