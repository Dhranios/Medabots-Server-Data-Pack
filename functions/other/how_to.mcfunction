tag @s[tag=how_to] remove how_to
tag @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:how_to_book",version:"16-4-2017"}}}]}] add how_to
execute if entity @s[tag=!how_to] unless entity @s[nbt={Inventory:[{Slot:13b}]}] run replaceitem entity @s inventory.4 minecraft:written_book{pages:["{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.1.1\",\"extra\":[{\"text\":\"\\n\"},{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.1.2\"},{\"text\":\"\\n\"},{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.1.3\"},{\"text\":\"\\n\"},{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.1.4\"},{\"text\":\"\\n\"},{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.1.5\"},{\"text\":\"\\n\"},{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.1.6\"},{\"text\":\"\\n\"},{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.1.7\"},{\"text\":\"\\n\"},{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.1.8\"}]}","{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.2.1\"}","{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.3.1\",\"extra\":[{\"text\":\"\\n\"},{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.3.2\"},{\"text\":\"\\n\"},{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.3.3\"},{\"text\":\"\\n\"},{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.3.4\"},{\"text\":\"\\n\"},{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.3.5\"},{\"text\":\"\\n\"},{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.3.6\"}]}","{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.4.1\",\"extra\":[{\"text\":\"\\n\"},{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.4.2\"},{\"text\":\"\\n\\n\"},{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.4.3\"}]}","{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.5.1\",\"extra\":[{\"text\":\"\\n\"},{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.5.2\"}]}","{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.how_to_book.page.6.1\"}"],author:"FVbico",title:"How to Play",display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.how_to_book.title\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.how_to_book.author\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.how_to_book.pages\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.how_to_book.version\",\"with\":[{\"text\":\"16-4-2017\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.drop_to_kill\"}"]},HideFlags:32,medabots_server:{id:"medabots_server:how_to_book",kill:1b,version:"16-4-2017"}}