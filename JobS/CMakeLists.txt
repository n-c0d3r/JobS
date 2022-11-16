cmake_minimum_required(VERSION 3.10)



set(JOBS_SOURCE_DIR ${CMAKE_SOURCE_DIR}/JOBS/Source PARENT_SCOPE)
set(JOBS_SOURCE_DIR ${CMAKE_SOURCE_DIR}/JOBS/Source)



configure_file(ConfigurationFiles/JOBS/.BuildInfo ConfigurationFiles/JOBS/.BuildInfo)



file(GLOB JOBSSourceFiles
    "Source/JobS/*.cpp"
    "Source/JobS/*.h"
)
source_group("Source\\JobS" FILES ${JOBSSourceFiles})

file(GLOB JOBSSourceDirectX11Files
    "Source/JobS/DirectX11/*.cpp"
    "Source/JobS/DirectX11/*.h"
)
source_group("Source\\JobS\\DirectX11" FILES ${JOBSSourceDirectX11Files})

file(GLOB JOBSSourceDirectX12Files
    "Source/JobS/DirectX12/*.cpp"
    "Source/JobS/DirectX12/*.h"
)
source_group("Source\\JobS\\DirectX11" FILES ${JOBSSourceDirectX12Files})



add_library(JobS STATIC
    ${JOBSSourceFiles}
    ${JOBSSourceDirectX11Files}
    ${JOBSSourceDirectX12Files}
)



target_link_libraries(JobS
    PRIVATE 
        d3d11.lib
        d3d12.lib
        d3dcompiler
)

target_include_directories(JobS
    PUBLIC 
        ${CMAKE_BINARY_DIR}/JobS/ConfigurationFiles
        ${CMAKE_CURRENT_LIST_DIR}/Source
)

target_compile_definitions(JobS
    PRIVATE JOBS_EXPORTS=1
)