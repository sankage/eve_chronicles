# EVE Chronicles

An archive of the [EVE Online chronicles][1] in markdown format.

[1]: http://community.eveonline.com/backstory/chronicles

## Chronicles

[![Inheritance](thumbnails/Inheritance_card.jpg)](217.inheritance.md)
[![Testament](thumbnails/Testament_thumb.jpg)](216.testament.md)
[![Breathing Space](thumbnails/BreathingSpace_thumb.jpg)](215.breathing-space.md)
[![Particle Tracks](thumbnails/ParticleTracks_thumb.jpg)](214.particle-tracks.md)
[![Welcome Party](thumbnails/WelcomeParty_thumb.jpg)](213.welcome-party.md)
[![The Book Of Emptiness 2 of 2](thumbnails/TheBookOfEmptiness2of2_thumb.jpg)](212.the-book-of-emptiness-part-two.md)
[![Uplifted](thumbnails/Uplifted_thumb.jpg)](211.uplifted.md)
[![The Book Of Emptiness 1 of 2](thumbnails/TheBookOfEmptiness1of2_thumb.jpg)](210.the-book-of-emptiness-part-one.md)
[![Fedo](thumbnails/Fedo.jpg)](001.fedo.md)

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
