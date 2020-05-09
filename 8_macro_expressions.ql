import cpp

from Macro m, MacroInvocation mi
where m.getName().regexpMatch("ntoh(s|l|ll)") and
    mi.getMacro() = m
select mi.getExpr()