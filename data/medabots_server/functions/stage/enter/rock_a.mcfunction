scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:rock_a run teleport @s[scores={Dialog=0,Verified=3}] 32 59 31 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={meet_max=true,meet_koji=false}}] run tag @s add dialog_infinity_meet_koji
execute if entity @s[advancements={medabots_server:story_progression/infinity={rubberobo_breakout=true,rubberobo_enters_rock_a=false}}] run tag @s add dialog_infinity_rubberobo_enters_rock_a