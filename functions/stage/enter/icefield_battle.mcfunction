teleport @s[scores={Dialog=0,Verified=3}] -1999 51 -608 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:wave_1/story_progression={vs_spyke_begin=true,vs_spyke=false}}] run tag @s add dialog_infinity_vs_spyke
execute if entity @s[advancements={medabots_server:wave_1/story_progression={rubberobo_leaves_snowfield_b=true,vs_gillgirl=false}}] run tag @s add dialog_infinity_vs_gillgirl