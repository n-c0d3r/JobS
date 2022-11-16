cmake_minimum_required(VERSION 3.10)



file(GLOB InitJOBSSourceFiles
    "Source/*.cpp"
    "Source/*.h"
)
source_group("Source" FILES ${InitJOBSSourceFiles})



add_executable(InitJobS
    ${InitJOBSSourceFiles}
)



set_target_properties(InitJobS
    PROPERTIES 
        FOLDER "Samples"
)



include(${JOBS_CMAKE_DIR}/TargetUseJobS.cmake)
TargetUseJobS(InitJobS)