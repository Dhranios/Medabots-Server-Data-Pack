tag @s[scores={LegsArmor=..0}] add preference_repair
tag @s[scores={LeftArmArmor=..0}] add preference_repair
tag @s[scores={RightArmArmor=..0}] add preference_repair

execute if entity @e[scores={LegsArmor=..0},tag=enemy_medabot,distance=..10,limit=1] run tag @s[tag=enemy_medabot] add preference_repair
execute if entity @e[scores={LeftArmArmor=..0},tag=enemy_medabot,distance=..10,limit=1] run tag @s[tag=enemy_medabot] add preference_repair
execute if entity @e[scores={RightArmArmor=..0},tag=enemy_medabot,distance=..10,limit=1] run tag @s[tag=enemy_medabot] add preference_repair

execute if entity @e[scores={LegsArmor=..0},tag=ally_medabot,distance=..10,limit=1] run tag @s[tag=ally_medabot] add preference_repair
execute if entity @e[scores={LeftArmArmor=..0},tag=ally_medabot,distance=..10,limit=1] run tag @s[tag=ally_medabot] add preference_repair
execute if entity @e[scores={RightArmArmor=..0},tag=ally_medabot,distance=..10,limit=1] run tag @s[tag=ally_medabot] add preference_repair