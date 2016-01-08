# EVE Chronicles

An archive of the [EVE Online chronicles][1] in markdown format.

[1]: http://community.eveonline.com/backstory/chronicles

## Chronicles

[![Inheritance](thumbnails/Inheritance_card.jpg)](chronicles/217.inheritance.md)
[![Testament](thumbnails/Testament_thumb.jpg)](chronicles/216.testament.md)
[![Breathing Space](thumbnails/BreathingSpace_thumb.jpg)](chronicles/215.breathing-space.md)
[![Particle Tracks](thumbnails/ParticleTracks_thumb.jpg)](chronicles/214.particle-tracks.md)
[![Welcome Party](thumbnails/WelcomeParty_thumb.jpg)](chronicles/213.welcome-party.md)
[![The Book Of Emptiness 2 of 2](thumbnails/TheBookOfEmptiness2of2_thumb.jpg)](chronicles/212.the-book-of-emptiness-part-two.md)
[![Uplifted](thumbnails/Uplifted_thumb.jpg)](chronicles/211.uplifted.md)
[![The Book Of Emptiness 1 of 2](thumbnails/TheBookOfEmptiness1of2_thumb.jpg)](chronicles/210.the-book-of-emptiness-part-one.md)
[![The Plague Years](thumbnails/ThePlagueYears_thumb.jpg)](chronicles/209.the-plague-years.md)
[![Society of Conscious Thought](thumbnails/Society_of_Conscious_Thought.jpg)](chronicles/004.society-of-conscious-thought.md)
[![Dam Torsad](thumbnails/Dam-Torsad.jpg)](chronicles/003.dam-torsad.md)
[![Mind Clash](thumbnails/Mind_Clash.jpg)](chronicles/002.mind-clash.md)
[![Fedo](thumbnails/Fedo.jpg)](chronicles/001.fedo.md)

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
