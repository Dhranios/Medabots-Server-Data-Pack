execute if entity @s[tag=preference_heal,scores={Dialog=0}] run function medabots_server:entities/medabot/cpu/preference_selection/heal
execute if entity @s[tag=preference_repair,scores={Dialog=0}] run function medabots_server:entities/medabot/cpu/preference_selection/repair
execute if entity @s[tag=preference_blocking,scores={Dialog=0}] unless entity @s[scores={NoDefendTime=1..}] run function medabots_server:entities/medabot/cpu/preference_selection/blocking
execute if entity @s[tag=preference_guard_optical,scores={Dialog=0}] run function medabots_server:entities/medabot/cpu/preference_selection/guard_optical
execute if entity @s[tag=preference_guard_gunpowder,scores={Dialog=0}] run function medabots_server:entities/medabot/cpu/preference_selection/guard_gunpowder
execute if entity @s[tag=preference_guard_gravity,scores={Dialog=0}] run function medabots_server:entities/medabot/cpu/preference_selection/guard_gravity
execute if entity @s[tag=preference_status_clear,scores={Dialog=0}] run function medabots_server:entities/medabot/cpu/preference_selection/status_clear
execute if entity @s[tag=preference_trap,scores={Dialog=0}] run function medabots_server:entities/medabot/cpu/preference_selection/trap
execute if entity @s[tag=preference_melee,scores={Dialog=0}] run function medabots_server:entities/medabot/cpu/preference_selection/melee
execute if entity @s[tag=preference_ranged,scores={Dialog=0}] run function medabots_server:entities/medabot/cpu/preference_selection/ranged
execute if entity @s[tag=preference_charge_medaforce,scores={Charge=..49,Dialog=0}] run function medabots_server:entities/medabot/cpu/preference_selection/charge_medaforce
scoreboard players set @s[tag=preference_melee,scores={HeadUses=0,LeftArmArmor=..0,RightArmArmor=..0},tag=blocked_medaforce] SelfDestruct 1