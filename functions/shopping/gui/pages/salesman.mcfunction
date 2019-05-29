# rx
# the number indicates how many slots are there + 1 (don't forget bout the home btn)
execute store result score @s Time run clear @s #all{gui:{}} 0
execute if score @s Time matches 5.. run function medabots_server:shopping/gui/clear

replaceitem entity @s hotbar.3 minecraft:beetroot_soup{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.espresso"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.espresso.description"}']},medabots_server:{id:"medabots_server:espresso",kill:1b},gui:{expresso:1b}}
replaceitem entity @s hotbar.4 minecraft:chainmail_helmet{Unbreakable:1b,HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sunglasses"}'},AttributeModifiers:[],medabots_server:{id:"medabots_server:sunglasses",kill:1b},gui:{sunglasses:1b}}
replaceitem entity @s hotbar.5 minecraft:golden_helmet{Unbreakable:1b,HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.unknown_crown"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.unknown_crown.description.1"}','{"italic":false,"color":"white","translate":"medabots_server:item.unknown_crown.description.2"}']},AttributeModifiers:[],medabots_server:{id:"medabots_server:unknown_crown",kill:1b},gui:{crown:1b}}