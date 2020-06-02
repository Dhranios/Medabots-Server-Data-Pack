tag @s[scores={HeadPer=..50,MedabotLevel=70..}] add preference_heal
tag @s[scores={HeadPer=..40,MedabotLevel=40..69}] add preference_heal
tag @s[scores={HeadPer=..30,MedabotLevel=20..49}] add preference_heal
tag @s[scores={HeadPer=..20,MedabotLevel=10..29}] add preference_heal
tag @s[scores={HeadPer=..10,MedabotLevel=..9}] add preference_heal

execute if entity @e[scores={HeadPer=..50},tag=enemy_medabot,distance=..10,limit=1] run tag @s[tag=enemy_medabot,scores={MedabotLevel=70..}] add preference_heal
execute if entity @e[scores={HeadPer=..50},tag=enemy_medabot,distance=..10,limit=1] run tag @s[tag=enemy_medabot,scores={MedabotLevel=40..69}] add preference_heal
execute if entity @e[scores={HeadPer=..50},tag=enemy_medabot,distance=..10,limit=1] run tag @s[tag=enemy_medabot,scores={MedabotLevel=30..39}] add preference_heal
execute if entity @e[scores={HeadPer=..50},tag=enemy_medabot,distance=..10,limit=1] run tag @s[tag=enemy_medabot,scores={MedabotLevel=10..29}] add preference_heal
execute if entity @e[scores={HeadPer=..50},tag=enemy_medabot,distance=..10,limit=1] run tag @s[tag=enemy_medabot,scores={MedabotLevel=..9}] add preference_heal

execute if entity @e[scores={HeadPer=..50},tag=ally_medabot,distance=..10,limit=1] run tag @s[tag=ally_medabot,scores={MedabotLevel=70..}] add preference_heal
execute if entity @e[scores={HeadPer=..50},tag=ally_medabot,distance=..10,limit=1] run tag @s[tag=ally_medabot,scores={MedabotLevel=40..69}] add preference_heal
execute if entity @e[scores={HeadPer=..50},tag=ally_medabot,distance=..10,limit=1] run tag @s[tag=ally_medabot,scores={MedabotLevel=30..39}] add preference_heal
execute if entity @e[scores={HeadPer=..50},tag=ally_medabot,distance=..10,limit=1] run tag @s[tag=ally_medabot,scores={MedabotLevel=10..29}] add preference_heal
execute if entity @e[scores={HeadPer=..50},tag=ally_medabot,distance=..10,limit=1] run tag @s[tag=ally_medabot,scores={MedabotLevel=..9}] add preference_heal