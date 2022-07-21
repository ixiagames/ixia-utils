package ixia.utils.lua;

using lua.PairTools;
using lua.Table;

@:forwardStatics
abstract TableTools(lua.TableTools) {
    
    public static function removeValue<T>(table:Table<Int, T>, value:T):Bool {
        for (entry in table.ipairsIterator()) {
            if (entry.value == value) {
                table.remove(entry.index);
                return true;
            }
        }
        return false;
    }

    public static inline function table<T>(array:Array<T>):Table<Int, T> {
        return cast array;
    }

}