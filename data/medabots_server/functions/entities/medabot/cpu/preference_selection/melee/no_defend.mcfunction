execute if entity @s[scores={RightArmArmor=1..}] if entity @e[tag=this_medabot,limit=1,tag=right_arm,nbt={ArmorItems:[{tag:{medabots_server:{move:"no_defend"}}}]}] run tag @s add right_arm_selected
execute if entity @s[tag=!right_arm_selected,scores={LeftArmArmor=1..}] if entity @e[tag=this_medabot,limit=1,tag=left_arm,nbt={ArmorItems:[{tag:{medabots_server:{move:"no_defend"}}}]}] run tag @s add left_arm_selected
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,scores={HeadUses=1..}] if entity @e[tag=this_medabot,limit=1,tag=chest,nbt={ArmorItems:[{tag:{medabots_server:{move:"no_defend"}}}]}] run tag @s add head_selected

execute unless entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/melee/clear
tag @s remove preference_no_defend