cmake_minimum_required(VERSION 3.5)
PROJECT (mem_proc)
file(GLOB SOURCES "${PROJECT_SOURCE_DIR}/libpagemap/*.c")
add_definitions (
    -D_LARGEFILE64_SOURCE
    )
include_directories (${PROJECT_SOURCE_DIR}/libpagemap/include)
add_library(pagemap ${SOURCES})

add_executable(procmem_e  ${PROJECT_SOURCE_DIR}/procmem/procmem.c)
target_link_libraries(procmem_e pagemap)
add_executable(procrank_e  ${PROJECT_SOURCE_DIR}/procrank/procrank.c)
target_link_libraries(procrank_e pagemap)
