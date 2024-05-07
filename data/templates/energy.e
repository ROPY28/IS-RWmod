[core]
#@global lazEnergy: number 
#@global lazEnergy: self.attachment(slot='unitSlot1').energy

[template_healthe]
yOffsetAbsolute: ${core.radius}+10
alwaysStartDirAtZero: true
layer: beforeUI

[decal_healthbare]
@copyFromSection: template_healthe
isVisible: if self.hasUnitInTeam(withTag='lazdef')
image: ROOT:ui\df.png
imageScale:  0.4
imageScaleX:1
imageScaleY:1.4


[decal_healthfronte]
@copyFromSection: template_healthe
isVisible: if self.hasUnitInTeam(withTag='lazdef')
image: ROOT:ui\dd.png
imageScale:  0.4
imageScaleX:1
imageScaleY:1.4

[decal_pipfulle]
@copyFromSection: template_healthe
image: ROOT:ui\laz.png
imageScaleX: 30/self.attachment(slot='unitslot1').maxEnergy*self.attachment(slot='unitslot1').energy
imageScale:0.6
imageScaleY:1.4
isVisible: if not self.attachment(slot='unitslot1').hasFlag(id=28)  and self.hasUnitInTeam(withTag='lazdef')


[decal_piprech]
@copyFromSection: template_healthe
image: ROOT:ui\rch.png
imageScaleX: 30/self.attachment(slot='unitslot1').maxEnergy*self.attachment(slot='unitslot1').energy
imageScale:0.6
imageScaleY:1.4
isVisible: if self.attachment(slot='unitslot1').hasFlag(id=28)



[template_healthpipse]
@define maxPips: 10
image: ROOT:\Assets\Images\health.laz.png
alwaysStartDirAtZero: true
yOffsetAbsolute: ${core.radius}+10
xOffsetAbsolute: ${-9.25+(hp*2)}
imageScaleX: 2
isVisible: if not self.hp(full=true)
alpha: min(1,max(0,(self.hp()-${(core.maxHp/maxPips)*hp}) / ${core.maxHp/maxPips}))