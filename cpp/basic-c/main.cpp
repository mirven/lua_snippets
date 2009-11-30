#include <iostream>

extern "C" {	
	#include "lua.h"
	#include "lualib.h"
	#include "lauxlib.h"
}


int main(int argc, char** argv) {
	if (argc < 2) {
		std::cerr << argv[0] << " <filename.lua>" << std::endl;
		return 1;
	}
	
	lua_State* L = lua_open();
	
	luaL_openlibs(L);
	
	if (luaL_loadfile(L, argv[1]) == 0) {
		if (lua_pcall(L, 0,0,0) != 0) {
			std::cerr << lua_tostring(L, -1) << std::endl;
		}
	} else {
		std::cerr << "unable to load " << argv[1] << std::endl;
	}
	
	lua_close(L);
	return 0;
}