
function(TargetUseJobS TargetName)
    
    add_dependencies(${TargetName} JobS)

    target_link_libraries(${TargetName} 
        PRIVATE JobS
    )

    target_include_directories(${TargetName} 
        PUBLIC ${JOBS_SOURCE_DIR}
    )

endfunction(TargetUseJobS)
