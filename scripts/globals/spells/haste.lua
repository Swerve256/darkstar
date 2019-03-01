-----------------------------------------
-- Spell: Haste
-- Composure increases duration 3x
-----------------------------------------
require("scripts/globals/magic")
require("scripts/globals/msg")
require("scripts/globals/status")
-----------------------------------------

function onMagicCastingCheck(caster, target, spell)
    return 0
end

function onSpellCast(caster, target, spell)
    local duration = calculateDuration(600, spell:getSkillType(), spell:getSpellGroup(), caster, target)
    duration = calculateDurationForLvl(duration, 48, target:getMainLvl())

    local power = 2500 -- 150/1024 ~25.00%

    if not target:addStatusEffect(dsp.effect.HASTE, power, 0, duration) then
        spell:setMsg(dsp.msg.basic.MAGIC_NO_EFFECT)
    end

    return dsp.effect.HASTE
end
