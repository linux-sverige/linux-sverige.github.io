#!/usr/bin/env python3
import os
import re

# Correct widget code with show_categories
OLD_WIDGET_PATTERN = r'var FreeScoutW=\{s:\{"color":"#003399","position":"br","id":1396014769\}\}'
NEW_WIDGET_CODE = 'var FreeScoutW={s:{"color":"#003399","position":"br","show_categories":"1","id":1396014769}}'

# Find all HTML files
html_files = [f for f in os.listdir('.') if f.endswith('.html')]

for filename in html_files:
    with open(filename, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Check if file has the old widget
    if 'var FreeScoutW={s:{"color":"#003399","position":"br","id":1396014769}}' in content:
        # Replace with correct widget including show_categories
        content = re.sub(OLD_WIDGET_PATTERN, NEW_WIDGET_CODE, content)
        with open(filename, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"✅ {filename} - widget updated with show_categories")
    elif 'show_categories' in content:
        print(f"✅ {filename} - already has show_categories")
    else:
        print(f"ℹ️  {filename} - no widget found")

print("\n🎉 Widget code fixed!")
