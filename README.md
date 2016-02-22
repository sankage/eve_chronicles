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
[![King Slaver](thumbnails/KingSlaver_thumb.jpg)](chronicles/208.king-slaver.md)
[![The Desert Fathers](thumbnails/TheDesertFathers_thumb.jpg)](chronicles/207.the-desert-fathers.md)
[![Hona is Three](thumbnails/HonaIsThree_thumb.jpg)](chronicles/206.hona-is-three.md)
[![Rust Creeps](thumbnails/RustCreeps_thumb.jpg)](chronicles/205.rust-creeps.md)
[![Tattoos](thumbnails/Tattoo_thumb.jpg)](chronicles/204.tattoos.md)
[![Jita 4-4](thumbnails/Jita4-4_thumb.jpg)](chronicles/203.jita-4-4.md)
[![Outer Ring
Excavations](thumbnails/Outer_Ring_Excavations.jpg)](chronicles/009.outer-ring-excavations.md)
[![War Tattoos](thumbnails/War_tattoos.jpg)](chronicles/008.war-tattoos.md)
[![Fatal and The
Rabbit](thumbnails/fatal_and_the_rabbit.jpg)](chronicles/007.fatal-and-the-rabbit.md)
[![Quafe](thumbnails/quafe.jpg)](chronicles/006.quafe.md)
[![Vitoc](thumbnails/vitoc.jpg)](chronicles/005.vitoc.md)
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

```vim
:%s/\n\t/\r/ge | %s/<p>\(\_.\{-}\)<\/p>/\1\r/ge | %s/&nbsp;/ /ge |
%s/<i>\(\_.\{-}\)<\/i>/_\1_/ge | %s/<em>\(\_.\{-}\)<\/em>/_\1_/ge |
%s/\n\n\n/\r/ge
```

```vim
:%s/\n\s\{-}<h1 class="content-title">\(\_.\{-}\)<\/h1>/# \1\r/ge | %s/\s\{-}<p
class="center"><img src="\_.*\/\(\_.\{-}\)"
alt="\(\_.\{-}\)"><\/p>/![\2](..\/images\/\1)/ge
```
