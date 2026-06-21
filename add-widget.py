#!/usr/bin/env python3
import os

# FreeScout Widget Code
WIDGET_CODE = '''<!-- FreeScout BEGIN -->
<script>var FreeScoutW={s:{"color":"#003399","position":"br","show_categories":"1","id":1396014769}};(function(d,e,s){if(d.getElementById("freescout-w"))return;a=d.createElement(e);m=d.getElementsByTagName(e)[0];a.async=1;a.id="freescout-w";a.src=s;m.parentNode.insertBefore(a, m)})(document,"script","https://support.snozze.email/modules/knowledgebase/js/widget.js?v=6831");</script>
<!-- FreeScout END -->'''

# HTML files to update
html_files = [f for f in os.listdir('.') if f.endswith('.html')]

for filename in html_files:
    with open(filename, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Check if widget already exists
    if 'FreeScout BEGIN' in content:
        print(f"✅ {filename} - already has widget")
        continue
    
    # Add widget before </body>
    if '</body>' in content:
        content = content.replace('</body>', WIDGET_CODE + '\n</body>')
        with open(filename, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"✅ {filename} - widget added")
    else:
        print(f"⚠️  {filename} - no </body> tag found")

print("\n🎉 All HTML files updated with FreeScout widget!")
