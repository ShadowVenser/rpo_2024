# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/vss_admin/Android/Sdk/cmake/3.22.1/bin/cmake

# The command to remove a file.
RM = /home/vss_admin/Android/Sdk/cmake/3.22.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86

# Utility rule file for test_suite_ecp_generated_data.

# Include any custom commands dependencies for this target.
include tests/CMakeFiles/test_suite_ecp_generated_data.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test_suite_ecp_generated_data.dir/progress.make

tests/CMakeFiles/test_suite_ecp_generated_data: tests/suites/test_suite_ecp.generated.data

tests/suites/test_suite_ecp.generated.data: /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/tests/scripts/generate_ecp_tests.py
tests/suites/test_suite_ecp.generated.data: /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/scripts/mbedtls_dev/bignum_common.py
tests/suites/test_suite_ecp.generated.data: /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/scripts/mbedtls_dev/ecp.py
tests/suites/test_suite_ecp.generated.data: /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/scripts/mbedtls_dev/test_case.py
tests/suites/test_suite_ecp.generated.data: /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/scripts/mbedtls_dev/test_data_generation.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating suites/test_suite_ecp.generated.data"
	cd /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls && /usr/bin/python3 /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/tests/../tests/scripts/generate_ecp_tests.py --directory /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/tests/suites

test_suite_ecp_generated_data: tests/CMakeFiles/test_suite_ecp_generated_data
test_suite_ecp_generated_data: tests/suites/test_suite_ecp.generated.data
test_suite_ecp_generated_data: tests/CMakeFiles/test_suite_ecp_generated_data.dir/build.make
.PHONY : test_suite_ecp_generated_data

# Rule to build all files generated by this target.
tests/CMakeFiles/test_suite_ecp_generated_data.dir/build: test_suite_ecp_generated_data
.PHONY : tests/CMakeFiles/test_suite_ecp_generated_data.dir/build

tests/CMakeFiles/test_suite_ecp_generated_data.dir/clean:
	cd /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/tests && $(CMAKE_COMMAND) -P CMakeFiles/test_suite_ecp_generated_data.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test_suite_ecp_generated_data.dir/clean

tests/CMakeFiles/test_suite_ecp_generated_data.dir/depend:
	cd /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/tests /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86 /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/tests /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/tests/CMakeFiles/test_suite_ecp_generated_data.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/test_suite_ecp_generated_data.dir/depend

