#!/bin/bash

# FreeScout Widget Code
WIDGET_CODE='<!-- FreeScout BEGIN -->
<script>var FreeScoutW={s:{"color":"#003399","position":"br","show_categories":"1","id":1396014769}};(function(d,e,s){if(d.getElementById("freescout-w"))return;a=d.createElement(e);m=d.getElementsByTagName(e)[0];a.async=1;a.id="freescout-w";a.src=s;m.parentNode.insertBefore(a, m)})(document,"script","https://support.snozze.email/modules/knowledgebase/js/widget.js?v=6831");</script>
<!-- FreeScout END -->'

# Find all HTML files and add widget before </body>
for file in *.html; do
    if grep -q "FreeScout BEGIN" "$file"; then
        echo "✅ $file - already has widget"
    else
        # Add widget before </body>
        sed -i "s|</body>|${WIDGET_CODE}\n</body>|" "$file"
        echo "✅ $file - widget added"
    fi
done

echo ""
echo "🎉 All HTML files updated with FreeScout widget!"
