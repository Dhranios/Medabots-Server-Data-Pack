scoreboard players set @s Stage 50
scoreboard players set @s Gamemode 0

execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_samantha=true,vs_samantha_battle=false}}] run function medabots_server:stage/try/park_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_shrimplips=true,vs_shrimplips_battle=false}}] run function medabots_server:stage/try/park_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={shrimplips_jammy=true,shrimplips_jammy_battle=false}}] run function medabots_server:stage/try/park_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={new_look_new_chances=true,new_look_new_chances_battle=false}}] run function medabots_server:stage/try/park_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_max=true,erikas_pass=false}}] run function medabots_server:stage/try/park_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/other={salesman_chameleon_medal_vs=true,salesman_chameleon_medal_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={vs_max=true,erikas_pass=false}}] run function medabots_server:stage/try/park_battle/story_battle
execute if entity @s[scores={KillStreak=1}] run function medabots_server:stage/try/park_battle/story_battle
execute if entity @s[scores={KillStreak=2}] run function medabots_server:stage/try/park_battle/story_battle

execute unless entity @s[advancements={medabots_server:story_progression/infinity={vs_samantha=true,vs_samantha_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={vs_shrimplips=true,vs_shrimplips_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={shrimplips_jammy=true,shrimplips_jammy_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={new_look_new_chances=true,new_look_new_chances_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={vs_max=true,erikas_pass=false}}] unless entity @s[advancements={medabots_server:story_progression/other={salesman_chameleon_medal_vs=true,salesman_chameleon_medal_battle=false}}] unless entity @s[scores={KillStreak=1..2}] run function medabots_server:stage/sign/park_battle/random

execute if entity @s[scores={Gamemode=0,State=1..3}] run function medabots_server:stage/sign/park_battle/random_success
execute unless entity @s[scores={Gamemode=0,State=1..3}] run scoreboard players reset @s Stage
execute unless entity @s[scores={Gamemode=0,State=1..3}] run scoreboard players reset @s Gamemode