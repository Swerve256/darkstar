-----------------------------------------
--   Spell: PHALANX
-----------------------------------------
require("scripts/globals/magic")
require("scripts/globals/msg")
require("scripts/globals/status")
-----------------------------------------

function onMagicCastingCheck(caster, target, spell)
    return 0
end

function onSpellCast(caster, target, spell)
    local enhskill = caster:getSkillLevel(dsp.skill.ENHANCING_MAGIC)
    local final = 0
    local duration = calculateDuration(600, spell:getSkillType(), spell:getSpellGroup(), caster, target)
    duration = calculateDurationForLvl(duration, 33, target:getMainLvl())

    if enhskill <= 100 then
        final = math.max(enhskill / 10 - 2, 0)
    elseif enhskill > 150 then
        final = (enhskill - 150) / 29 + 28
    else
        print("Warning: Unknown enhancing magic skill for phalanx.")
    end

    -- Cap at 35
    final = math.min(final, 35)

    if target:addStatusEffect(dsp.effect.PHALANX, final, 0, duration) then
        spell:setMsg(dsp.msg.basic.MAGIC_GAIN_EFFECT)
    else
        spell:setMsg(dsp.msg.basic.MAGIC_NO_EFFECT)
    end

    return dsp.effect.PHALANX
end
