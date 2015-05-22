SET(Hex_HEADERS
	Application.hpp

	Graphics/HexMap.hpp
	Graphics/HexSheet.hpp

	Script/ScriptEngine.hpp

	Util/FileSystemWatcher.hpp
	Util/ResourceManager.hpp
	Util/ResourceManager.inl
)

SET(Hex_SOURCES
	Application.cpp

	Graphics/HexMap.cpp
	Graphics/HexSheet.cpp

	Script/ScriptEngine.cpp

	Util/FileSystemWatcher.cpp
)

SOURCE_GROUP("Header Files\\" REGULAR_EXPRESSION "[^./]+.(hpp|inl)")
SOURCE_GROUP("Source Files\\" REGULAR_EXPRESSION "[^./]+.cpp")

SOURCE_GROUP("Header Files\\Graphics\\" REGULAR_EXPRESSION "Graphics/[^./]+.(hpp|inl)")
SOURCE_GROUP("Source Files\\Graphics\\" REGULAR_EXPRESSION "Graphics/[^./]+.cpp")
SOURCE_GROUP("Header Files\\Script\\" REGULAR_EXPRESSION "Script/[^./]+.(hpp|inl)")
SOURCE_GROUP("Source Files\\Script\\" REGULAR_EXPRESSION "Script/[^./]+.cpp")
SOURCE_GROUP("Header Files\\Util\\" REGULAR_EXPRESSION "Util/[^./]+.(hpp|inl)")
SOURCE_GROUP("Source Files\\Util\\" REGULAR_EXPRESSION "Util/[^./]+.cpp")

ADD_EXECUTABLE(Hex_Game main.cpp ${Hex_HEADERS} ${Hex_SOURCES})
TARGET_LINK_LIBRARIES(Hex_Game
	# ${SFML_LIBRARIES}
	# Lua / Angelscript / SWiG / Whatever
)
