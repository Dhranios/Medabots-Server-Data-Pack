execute if entity @s[scores={RightArmArmor=1..}] if entity @e[tag=this_medabot,limit=1,tag=right_arm,nbt={ArmorItems:[{tag:{medabots_server:{move:"confuse"}}}]}] run tag @s add right_arm_activated
execute if entity @s[tag=!right_arm_activated,scores={LeftArmArmor=1..}] if entity @e[tag=this_medabot,limit=1,tag=left_arm,nbt={ArmorItems:[{tag:{medabots_server:{move:"confuse"}}}]}] run tag @s add left_arm_activated
execute if entity @s[tag=!right_arm_activated,tag=!left_arm_activated,scores={HeadUses=1..}] if entity @e[tag=this_medabot,limit=1,tag=chest,nbt={ArmorItems:[{tag:{medabots_server:{move:"confuse"}}}]}] run tag @s add head_activated

execute unless entity @s[tag=!right_arm_activated,tag=!left_arm_activated,tag=!head_activated,tag=!medaforce_activated] run function medabots_server:entities/medabot/cpu/preference_selection/melee/clear
tag @s remove preference_confuse