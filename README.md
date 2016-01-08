# EVE Chronicles

An archive of the [EVE Online chronicles][1] in markdown format.

[1]: http://community.eveonline.com/backstory/chronicles


## Conversion

To convert from HTML to MD, you can use these helpful vim commands.

The header content goes to approximately line 190, so it and everything above it
can be removed:

```vim
190Gdgg
```

This will make sure the file is UTF-8 and convert html entities into plain text:

```vim
:set fileencoding=utf8 | %s/<p>\n\t\(\_.\{-}\)<\/p>/\1\r/ge |
%s/<em>\(\_.\{-}\)<\/em>/_\1_/ge | %s/\(&ldquo;\|&rdquo;\)/"/ge |
%s/\(&lsquo;\|&rsquo;\)/'/ge | %s/&hellip;/…/ge | %s/ &nbsp;/ /ge |
%s/\.\.\./…/ge | %s/<p align="center">\n\t\*\*\*<\/p>/\* \* \*\r/ge
```
