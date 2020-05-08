# If this tries to swim, it'll die
execute if entity @s[type=!minecraft:item] run function medabots_server:items/medapart/swim

# Send a killer message
execute if entity @s[scores={Killer=1..}] run function medabots_server:other/killer

# Block effects
execute if entity @s[type=!minecraft:item] if block ~ ~ ~ minecraft:comparator run function medabots_server:blocks/accelerator/accel
execute if entity @s[tag=hammer_punch_hit] run function medabots_server:blocks/hammer_punch/hit

# Instant death if you fall in the void
execute if entity @s[y=-80,dy=79,tag=!had_death] run function medabots_server:other/death/void

# Effects
execute if entity @s[scores={AuxiliaryTime=1..}] run function medabots_server:effects/auxiliary_charged
execute if entity @s[scores={BugTime=1..}] run function medabots_server:effects/buged
execute if entity @s[scores={ChaosTime=1..}] run function medabots_server:effects/panic
execute if entity @s[scores={ConfuseTime=1..}] run function medabots_server:effects/confused
execute if entity @s[scores={DefenseTime=1..}] run function medabots_server:effects/defending
execute if entity @s[scores={FreezeTime=1..}] run function medabots_server:effects/frozen
execute if entity @s[scores={HideTime=1..}] run function medabots_server:effects/hiding
execute if entity @s[scores={HoldTime=1..}] run function medabots_server:effects/held
execute if entity @s[scores={IneffectiveTime=1..}] run function medabots_server:effects/ineffective_part
execute if entity @s[scores={InfectTime=1..}] run function medabots_server:effects/infected
execute if entity @s[scores={NoDefendTime=1..}] run function medabots_server:effects/no_defending
execute if entity @s[scores={ParalyzeTime=1..}] run function medabots_server:effects/paralyzed
execute if entity @s[scores={PerfectGuardTime=1..}] run function medabots_server:effects/perfectly_guarding
execute if entity @s[scores={ScoutTime=1..}] run function medabots_server:effects/scouting