# SPDX-License-Identifier: BSD-3-Clause
# Copyright Contributors to the OpenColorIO Project.

project(pystring)

cmake_minimum_required(VERSION 3.10)

set(HEADERS
	pystring.h
)

set(SOURCES
	pystring.cpp
)

add_library(${PROJECT_NAME} ${HEADERS} ${SOURCES})

set_target_properties(${PROJECT_NAME} PROPERTIES 
    PUBLIC_HEADER "${HEADERS}"
)

install(TARGETS ${PROJECT_NAME}
	RUNTIME DESTINATION bin
	LIBRARY DESTINATION lib
	ARCHIVE DESTINATION lib
	PUBLIC_HEADER DESTINATION include/pystring
)
