scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:ruins_in_a run teleport @s[scores={Dialog=0,Verified=3}] 46 59 86 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={tunes_order=true,medanappings=false}}] run tag @s add dialog_infinity_medanappings
execute if entity @s[advancements={medabots_server:story_progression/infinity={rubberobo_breakout=true,rubberobo_enters_ruins_in_a=false}}] run tag @s add dialog_infinity_rubberobo_enters_ruins_in_a