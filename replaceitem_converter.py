import os
import re

def convert_replaceitem(fread):
    changed = False
    for i,command in enumerate(fread):
        if command.startswith("replaceitem"):
            # Regex credit to Dieuwt on the MinecraftCommands Discord
            fread[i] = re.sub(r'replaceitem (entity @.[^[]*? .*? |entity @.\[.*?\] .*? |block (.*? ){4})', r'item \1replace ', command)
            changed = True
    return fread, changed
    
for root, subdirs, files in os.walk("./data"):
    for file in files:
        filepath = os.path.join(root, file)
        if os.path.splitext(filepath)[-1] == ".mcfunction":
            with open(filepath, 'r') as f:
                fread = f.readlines()
            gread, changed = convert_replaceitem(fread)
            if changed:
                with open(filepath, 'w') as g:
                    g.write("".join(gread))
            
