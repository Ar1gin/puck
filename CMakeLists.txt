cmake_minimum_required(VERSION 3.9)
project(puck VERSION 0.0.1)

find_package(Qt6 REQUIRED COMPONENTS Widgets Core Quick Qml)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_AUTORCC ON)

set(SHARED
	src/keyboard.cpp
	src/keyboard.h
)

qt6_policy(SET QTP0001 NEW)
cmake_policy(SET CMP0071 NEW)
qt6_standard_project_setup()

include_directories(src)
qt6_add_executable(puck_app
	resources.qrc
	src/main.cpp
	${SHARED}
)
target_link_libraries(puck_app PRIVATE
	Qt6::Widgets
	Qt6::Core
	Qt6::Qml
	Qt6::Quick
)
qt6_add_qml_module(puck_app
	URI Puck
	QML_FILES App.qml
	DEPENDENCIES QWidgets QtQuick
)
install(TARGETS puck_app
	BUNDLE DESTINATION .
	RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
	LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
)
