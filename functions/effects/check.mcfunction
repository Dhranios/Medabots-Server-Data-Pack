# List effects
tellraw @s {"translate":"medabots_server:message.current_effects"}

# Auxilary Charged
execute if entity @s[scores={AuxilaryCharged=1..}] run scoreboard players operation @s EffectTimer = @s AuxilaryTime
execute if entity @s[scores={AuxilaryCharged=1..}] run scoreboard players operation @s EffectTimer /= #20 Constants
execute if entity @s[scores={AuxilaryCharged=1..}] run tellraw @s {"color":"green","translate":"medabots_server:message.current_effects.time","with":[{"translate":"medabots_server:effect.auxiliary_charged"},{"score":{"objective":"EffectTimer","name":"@s"}}]}

# Defending
execute if entity @s[scores={DefenseTime=1..}] run scoreboard players operation @s EffectTimer = @s DefenseTime
execute if entity @s[scores={DefenseTime=1..}] run scoreboard players operation @s EffectTimer /= #20 Constants
execute if entity @s[scores={DefenseTime=1..}] run tellraw @s {"color":"green","translate":"medabots_server:message.current_effects.time","with":[{"translate":"medabots_server:effect.defending"},{"score":{"objective":"EffectTimer","name":"@s"}}]}

# Hiding
execute if entity @s[scores={HideTime=1..}] run scoreboard players operation @s EffectTimer = @s HideTime
execute if entity @s[scores={HideTime=1..}] run scoreboard players operation @s EffectTimer /= #20 Constants
execute if entity @s[scores={HideTime=1..}] run tellraw @s {"color":"green","translate":"medabots_server:message.current_effects.time","with":[{"translate":"medabots_server:effect.hiding"},{"score":{"objective":"EffectTimer","name":"@s"}}]}

# Hovering
execute if entity @s[tag=static_fly] run tellraw @s {"color":"green","translate":"medabots_server:effect.hovering"}

# Perfectly Guarding
execute if entity @s[scores={PerfectGuardTime=1..}] run scoreboard players operation @s EffectTimer = @s PerfectGuardTime
execute if entity @s[scores={PerfectGuardTime=1..}] run scoreboard players operation @s EffectTimer /= #20 Constants
execute if entity @s[scores={PerfectGuardTime=1..}] run tellraw @s {"color":"green","translate":"medabots_server:message.current_effects.time","with":[{"translate":"medabots_server:effect.perfectly_guarding"},{"score":{"objective":"EffectTimer","name":"@s"}}]}

# Scouting
execute if entity @s[scores={ScoutTime=1..}] run scoreboard players operation @s EffectTimer = @s ScoutTime
execute if entity @s[scores={ScoutTime=1..}] run scoreboard players operation @s EffectTimer /= #20 Constants
execute if entity @s[scores={ScoutTime=1..}] run tellraw @s {"color":"green","translate":"medabots_server:message.current_effects.time","with":[{"translate":"medabots_server:effect.scouting"},{"score":{"objective":"EffectTimer","name":"@s"}}]}

# Transformed
execute if entity @s[scores={TransformHTime=1..}] run scoreboard players operation @s EffectTimer = @s TransformHTime
execute if entity @s[scores={TransformHTime=1..}] run scoreboard players operation @s EffectTimer /= #20 Constants
execute if entity @s[scores={TransformHTime=1..}] run tellraw @s {"color":"green","translate":"medabots_server:message.current_effects.time","with":[{"translate":"medabots_server:effect.transformed","with":[{"translate":"medabots_server:item.medapart.head"}]},{"score":{"objective":"EffectTimer","name":"@s"}}]}

# Transformed
execute if entity @s[scores={TransformLTime=1..}] run scoreboard players operation @s EffectTimer = @s TransformLTime
execute if entity @s[scores={TransformLTime=1..}] run scoreboard players operation @s EffectTimer /= #20 Constants
execute if entity @s[scores={TransformLTime=1..}] run tellraw @s {"color":"green","translate":"medabots_server:message.current_effects.time","with":[{"translate":"medabots_server:effect.transformed","with":[{"translate":"medabots_server:item.medapart.left_arm"}]},{"score":{"objective":"EffectTimer","name":"@s"}}]}

# Transformed
execute if entity @s[scores={TransformRTime=1..}] run scoreboard players operation @s EffectTimer = @s TransformRTime
execute if entity @s[scores={TransformRTime=1..}] run scoreboard players operation @s EffectTimer /= #20 Constants
execute if entity @s[scores={TransformRTime=1..}] run tellraw @s {"color":"green","translate":"medabots_server:message.current_effects.time","with":[{"translate":"medabots_server:effect.transformed","with":[{"translate":"medabots_server:item.medapart.right_arm"}]},{"score":{"objective":"EffectTimer","name":"@s"}}]}

# Blocked Medaforce
execute if entity @s[tag=blocked_medaforce] run tellraw @s {"color":"red","translate":"medabots_server:effect.blocked_medaforce"}

# Bugged
execute if entity @s[scores={BugTime=1..}] run scoreboard players operation @s EffectTimer = @s BugTime
execute if entity @s[scores={BugTime=1..}] run scoreboard players operation @s EffectTimer /= #20 Constants
execute if entity @s[scores={BugTime=1..}] run tellraw @s {"color":"red","translate":"medabots_server:message.current_effects.time","with":[{"translate":"medabots_server:effect.bugged"},{"score":{"objective":"EffectTimer","name":"@s"}}]}

# Confused
execute if entity @s[scores={ConfuseTime=1..}] run scoreboard players operation @s EffectTimer = @s ConfuseTime
execute if entity @s[scores={ConfuseTime=1..}] run scoreboard players operation @s EffectTimer /= #20 Constants
execute if entity @s[scores={ConfuseTime=1..}] run tellraw @s {"color":"red","translate":"medabots_server:message.current_effects.time","with":[{"translate":"medabots_server:effect.confused"},{"score":{"objective":"EffectTimer","name":"@s"}}]}

# Frozen
execute if entity @s[scores={FreezeTime=1..}] run scoreboard players operation @s EffectTimer = @s FreezeTime
execute if entity @s[scores={FreezeTime=1..}] run scoreboard players operation @s EffectTimer /= #20 Constants
execute if entity @s[scores={FreezeTime=1..}] run tellraw @s {"color":"red","translate":"medabots_server:message.current_effects.time","with":[{"translate":"medabots_server:effect.freeze"},{"score":{"objective":"EffectTimer","name":"@s"}}]}

# Held
execute if entity @s[scores={HoldTime=1..}] run scoreboard players operation @s EffectTimer = @s HoldTime
execute if entity @s[scores={HoldTime=1..}] run scoreboard players operation @s EffectTimer /= #20 Constants
execute if entity @s[scores={HoldTime=1..}] run tellraw @s {"color":"red","translate":"medabots_server:message.current_effects.time","with":[{"translate":"medabots_server:effect.freeze"},{"score":{"objective":"EffectTimer","name":"@s"}}]}

# Ineffective Part
execute if entity @s[scores={IneffectiveTime=1..}] run scoreboard players operation @s EffectTimer = @s IneffectiveTime
execute if entity @s[scores={IneffectiveTime=1..}] run scoreboard players operation @s EffectTimer /= #20 Constants
execute if entity @s[scores={IneffectiveTime=1..}] run tellraw @s {"color":"red","translate":"medabots_server:message.current_effects.time","with":[{"translate":"medabots_server:effect.ineffective_part"},{"score":{"objective":"EffectTimer","name":"@s"}}]}

# Infected
execute if entity @s[scores={InfectTime=1..}] run scoreboard players operation @s EffectTimer = @s InfectTime
execute if entity @s[scores={InfectTime=1..}] run scoreboard players operation @s EffectTimer /= #20 Constants
execute if entity @s[scores={InfectTime=1..}] run tellraw @s {"color":"red","translate":"medabots_server:message.current_effects.time","with":[{"translate":"medabots_server:effect.infected"},{"score":{"objective":"EffectTimer","name":"@s"}}]}

# No Defending
execute if entity @s[scores={NoDefendTime=1..}] run scoreboard players operation @s EffectTimer = @s NoDefendTime
execute if entity @s[scores={NoDefendTime=1..}] run scoreboard players operation @s EffectTimer /= #20 Constants
execute if entity @s[scores={NoDefendTime=1..}] run tellraw @s {"color":"red","translate":"medabots_server:message.current_effects.time","with":[{"translate":"medabots_server:effect.no_defending"},{"score":{"objective":"EffectTimer","name":"@s"}}]}

# Overheating Legs
execute if entity @s[scores={FlyTime=1..}] run scoreboard players operation @s EffectTimer = @s FlyTime
execute if entity @s[scores={FlyTime=1..}] run scoreboard players operation @s EffectTimer /= #20 Constants
execute if entity @s[scores={FlyTime=1..}] run tellraw @s {"color":"red","translate":"medabots_server:message.current_effects.time","with":[{"translate":"medabots_server:effect.overheating_legs"},{"score":{"objective":"EffectTimer","name":"@s"}}]}

# Overheating Medal
execute if entity @s[scores={OverheatingMedal=1..}] run scoreboard players operation @s EffectTimer = @s OverheatingMedal
execute if entity @s[scores={OverheatingMedal=1..}] run scoreboard players operation @s EffectTimer /= #4 Constants
execute if entity @s[scores={OverheatingMedal=1..}] run tellraw @s {"color":"red","translate":"medabots_server:message.current_effects.time","with":[{"translate":"medabots_server:effect.overheating_medal"},{"score":{"objective":"EffectTimer","name":"@s"}}]}

# Panic
execute if entity @s[scores={ChaosTime=1..}] run scoreboard players operation @s EffectTimer = @s ChaosTime
execute if entity @s[scores={ChaosTime=1..}] run scoreboard players operation @s EffectTimer /= #20 Constants
execute if entity @s[scores={ChaosTime=1..}] run tellraw @s {"color":"red","translate":"medabots_server:message.current_effects.time","with":[{"translate":"medabots_server:effect.panic"},{"score":{"objective":"EffectTimer","name":"@s"}}]}

# Paralyzed
execute if entity @s[scores={ParalyzeTime=1..}] run scoreboard players operation @s EffectTimer = @s ParalyzeTime
execute if entity @s[scores={ParalyzeTime=1..}] run scoreboard players operation @s EffectTimer /= #20 Constants
execute if entity @s[scores={ParalyzeTime=1..}] run tellraw @s {"color":"red","translate":"medabots_server:message.current_effects.time","with":[{"translate":"medabots_server:effect.paralyzed"},{"score":{"objective":"EffectTimer","name":"@s"}}]}

# None
execute unless entity @s[scores={EffectTimer=1..}] run tellraw @s[tag=!blocked_medaforce,tag=!static_fly] {"translate":"medabots_server:message.current_effects.none"}

# Show only once
tag @s[tag=!checked_effects] add checked_effects
scoreboard players reset @s EffectTimer