teleport @s[scores={Dialog=0,Verified=3}] -1999 51 -608 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_spyke_begin=true,vs_spyke=false}}] run tag @s add dialog_infinity_vs_spyke
execute if entity @s[advancements={medabots_server:story_progression/infinity={rubberobo_leaves_snowfield_b=true,vs_gillgirl=false}}] run tag @s add dialog_infinity_vs_gillgirl
execute if entity @s[advancements={medabots_server:story_progression/infinity={rubberobo_leaves_grassland_a=true,rubberobo_leaves_jungle_a=true,rubberobo_leaves_iceberg_a=true,rubberobo_leaves_ruins_out_b=true,squidguts_jammy=false}}] run tag @s add dialog_infinity_squidguts_jammy
execute if entity @s[advancements={medabots_server:story_progression/infinity={flame_tisala_is_yours=true,vs_karin=false}}] run tag @s add dialog_infinity_vs_karin