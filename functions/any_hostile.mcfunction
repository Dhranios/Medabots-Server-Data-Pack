# If this tries to swim, it'll die
execute if entity @s[type=!minecraft:item] run function medabots_server:medaparts/swim

# Send a killer message
execute if entity @s[scores={Killer=1..}] run function medabots_server:medaparts/killer

# Block effects
execute if entity @s[type=!minecraft:item] if block ~ ~ ~ minecraft:comparator run function medabots_server:blocks/accelerator/accel
execute if entity @s[tag=hammer_punch_hit] run function medabots_server:blocks/hammer_punch/hit

# A CPU
execute if entity @s[tag=enemy_medabot] run function medabots_server:any_cpu

# Effects
execute if entity @s[scores={AuxiliaryTime=1..}] run function medabots_server:medaparts/auxiliary_charge_effect
execute if entity @s[scores={BugTime=1..}] run function medabots_server:medaparts/bug_effect
execute if entity @s[scores={ConfuseTime=1..}] run function medabots_server:medaparts/confuse_effect
execute if entity @s[scores={DefenseTime=1..}] run function medabots_server:medaparts/defense_shield
execute if entity @s[scores={FreezeTime=1..}] run function medabots_server:medaparts/freeze_effect
execute if entity @s[scores={HideTime=1..}] run function medabots_server:medaparts/hide_effect
execute if entity @s[scores={HoldTime=1..}] run function medabots_server:medaparts/hold_effect
execute if entity @s[scores={IneffectiveTime=1..}] run function medabots_server:medaparts/ineffective_effect
execute if entity @s[scores={InfectTime=1..}] run function medabots_server:medaparts/infect_effect
execute if entity @s[scores={ParalyzeTime=1..}] run function medabots_server:medaparts/paralyze_effect
execute if entity @s[scores={PerfectGuardTime=1..}] run function medabots_server:medaparts/perfect_guard_effect
execute if entity @s[scores={ScoutTime=1..}] run function medabots_server:medaparts/scout_effect