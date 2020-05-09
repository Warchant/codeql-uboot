import cpp

class NetworkByteSwap extends Expr {
    NetworkByteSwap() {
        exists( Macro m, MacroInvocation mi | 
            m.getName().regexpMatch("ntoh(s|l|ll)") and
            mi.getMacro() = m and 
            mi.getExpr() = this
        )
    }
}

from NetworkByteSwap n
select n, "Network byte swap" 