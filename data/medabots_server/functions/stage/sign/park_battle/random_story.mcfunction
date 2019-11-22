data merge block -1950 52 -589 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/park_battle/enter"}}'}
setblock -1950 53 -591 minecraft:red_wool

execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_samantha=true,vs_samantha_battle=false}}] run function medabots_server:stage/try/park_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_shrimplips=true,vs_shrimplips_battle=false}}] run function medabots_server:stage/try/park_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={shrimplips_jammy=true,shrimplips_jammy_battle=false}}] run function medabots_server:stage/try/park_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={new_look_new_chances=true,new_look_new_chances_battle=false}}] run function medabots_server:stage/try/park_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_max=true,erikas_pass=false}}] run function medabots_server:stage/try/park_battle/story_battle
execute if entity @s[scores={KillStreak=1}] run function medabots_server:stage/try/park_battle/story_battle
execute if entity @s[scores={KillStreak=2}] run function medabots_server:stage/try/park_battle/story_battle

execute unless entity @s[advancements={medabots_server:story_progression/infinity={vs_samantha=true,vs_samantha_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={vs_shrimplips=true,vs_shrimplips_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={shrimplips_jammy=true,shrimplips_jammy_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={new_look_new_chances=true,new_look_new_chances_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={vs_max=true,erikas_pass=false}}] unless entity @s[scores={KillStreak=1..2}] run function medabots_server:stage/sign/park_battle/random