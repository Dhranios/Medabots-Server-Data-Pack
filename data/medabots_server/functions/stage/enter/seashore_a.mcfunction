scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:seashore_a run teleport @s[scores={Dialog=0,Verified=3}] 31 59 31 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[scores={Dialog=0,Verified=3},advancements={medabots_server:story_progression/infinity={rubberobo_enters_seashore_a=false},medabots_server:stages/wave_1/rock_a_rubberobo=true,medabots_server:stages/wave_1/snowfield_a_rubberobo=true,medabots_server:stages/wave_1/ruins_in_a_rubberobo=true}] run tag @s add dialog_infinity_rubberobo_enters_seashore_a