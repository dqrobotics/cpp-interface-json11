# To match dqrobotics CMAKE_MINIMUM_REQUIRED
CMAKE_MINIMUM_REQUIRED(VERSION 3.10)
PROJECT(dqrobotics-interface-json11)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Eigen3 REQUIRED)

INCLUDE_DIRECTORIES(${PROJECT_NAME} include)
INCLUDE_DIRECTORIES(${PROJECT_NAME} dropbox/json11)

################################################################
# DEFINE AND INSTALL LIBRARY AND INCLUDE FOLDER
################################################################

ADD_LIBRARY(${PROJECT_NAME} SHARED
    src/dqrobotics/interfaces/json11/DQ_JsonReader.cpp
    dropbox/json11/json11.cpp
    )

SET_TARGET_PROPERTIES(${PROJECT_NAME}
    PROPERTIES PUBLIC_HEADER
    include/dqrobotics/interfaces/json11/DQ_JsonReader.h
    )

INSTALL(TARGETS ${PROJECT_NAME}
    LIBRARY DESTINATION "lib"
    PUBLIC_HEADER DESTINATION "include/dqrobotics/interfaces/json11"
    PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ)

target_link_libraries(${PROJECT_NAME}
        Eigen3::Eigen
        -ldqrobotics
)

################################################################
# INSTALL SOURCE FILES (So that the debugger can find them)
################################################################

# base folder
INSTALL(FILES
    src/dqrobotics/interfaces/json11/DQ_JsonReader.cpp
    DESTINATION "src/dqrobotics/interfaces/json11")
