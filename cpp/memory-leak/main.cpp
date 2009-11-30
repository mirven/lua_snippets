#include <iostream>

// extern "C" {
#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"
// }

class Obj {
public:
	Obj() {
		std::cout << "object create" << std::endl;
	}
	
	~Obj() {
		std::cout << "object destroy" << std::endl;
	}
};

int foo(lua_State*L) {
	Obj obj;
	return luaL_error(L, "error in foo");	
}


int main(int argc, char** argv) {
	lua_State* L = lua_open();
	
	lua_pushcfunction(L, foo);
	int r = lua_pcall(L, 0,0,0);
	
	if (r == LUA_ERRRUN) {
		std::cout << lua_tostring(L, -1) << std::endl;
	}
	
	lua_close(L);
	return 0;
}