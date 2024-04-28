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

# Include any dependencies generated for this target.
include tests/CMakeFiles/test_suite_ecp.generated.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/test_suite_ecp.generated.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test_suite_ecp.generated.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test_suite_ecp.generated.dir/flags.make

tests/test_suite_ecp.generated.c: /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/tests/scripts/generate_test_code.py
tests/test_suite_ecp.generated.c: /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/tests/suites/test_suite_ecp.function
tests/test_suite_ecp.generated.c: tests/suites/test_suite_ecp.generated.data
tests/test_suite_ecp.generated.c: /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/tests/suites/main_test.function
tests/test_suite_ecp.generated.c: /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/tests/suites/host_test.function
tests/test_suite_ecp.generated.c: /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/tests/suites/helpers.function
tests/test_suite_ecp.generated.c: library/libmbedtls.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating test_suite_ecp.generated.c"
	cd /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/tests && /usr/bin/python3 /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/tests/scripts/generate_test_code.py -f /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/tests/suites/test_suite_ecp.function -d /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/tests/suites/test_suite_ecp.generated.data -t /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/tests/suites/main_test.function -p /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/tests/suites/host_test.function -s /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/tests/suites --helpers-file /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/tests/suites/helpers.function -o .

tests/suites/test_suite_ecp.generated.data: /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/tests/scripts/generate_ecp_tests.py
tests/suites/test_suite_ecp.generated.data: /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/scripts/mbedtls_dev/bignum_common.py
tests/suites/test_suite_ecp.generated.data: /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/scripts/mbedtls_dev/ecp.py
tests/suites/test_suite_ecp.generated.data: /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/scripts/mbedtls_dev/test_case.py
tests/suites/test_suite_ecp.generated.data: /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/scripts/mbedtls_dev/test_data_generation.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating suites/test_suite_ecp.generated.data"
	cd /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls && /usr/bin/python3 /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/tests/../tests/scripts/generate_ecp_tests.py --directory /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/tests/suites

tests/CMakeFiles/test_suite_ecp.generated.dir/test_suite_ecp.generated.c.o: tests/CMakeFiles/test_suite_ecp.generated.dir/flags.make
tests/CMakeFiles/test_suite_ecp.generated.dir/test_suite_ecp.generated.c.o: tests/test_suite_ecp.generated.c
tests/CMakeFiles/test_suite_ecp.generated.dir/test_suite_ecp.generated.c.o: tests/CMakeFiles/test_suite_ecp.generated.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object tests/CMakeFiles/test_suite_ecp.generated.dir/test_suite_ecp.generated.c.o"
	cd /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/tests && /home/vss_admin/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=i686-none-linux-android23 --sysroot=/home/vss_admin/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/CMakeFiles/test_suite_ecp.generated.dir/test_suite_ecp.generated.c.o -MF CMakeFiles/test_suite_ecp.generated.dir/test_suite_ecp.generated.c.o.d -o CMakeFiles/test_suite_ecp.generated.dir/test_suite_ecp.generated.c.o -c /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/tests/test_suite_ecp.generated.c

tests/CMakeFiles/test_suite_ecp.generated.dir/test_suite_ecp.generated.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_suite_ecp.generated.dir/test_suite_ecp.generated.c.i"
	cd /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/tests && /home/vss_admin/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=i686-none-linux-android23 --sysroot=/home/vss_admin/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/tests/test_suite_ecp.generated.c > CMakeFiles/test_suite_ecp.generated.dir/test_suite_ecp.generated.c.i

tests/CMakeFiles/test_suite_ecp.generated.dir/test_suite_ecp.generated.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_suite_ecp.generated.dir/test_suite_ecp.generated.c.s"
	cd /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/tests && /home/vss_admin/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=i686-none-linux-android23 --sysroot=/home/vss_admin/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/tests/test_suite_ecp.generated.c -o CMakeFiles/test_suite_ecp.generated.dir/test_suite_ecp.generated.c.s

# Object files for target test_suite_ecp.generated
test_suite_ecp_generated_OBJECTS = \
"CMakeFiles/test_suite_ecp.generated.dir/test_suite_ecp.generated.c.o"

# External object files for target test_suite_ecp.generated
test_suite_ecp_generated_EXTERNAL_OBJECTS = \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/bignum_helpers.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/certs.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/hash.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/platform_builtin_keys.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_aead.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_asymmetric_encryption.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_cipher.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_agreement.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_management.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_mac.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_pake.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_signature.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_stubs.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/psa_memory_poisoning_wrappers.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/psa_test_wrappers.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/random.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/test_memory.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles/mbedtls_test_helpers.dir/tests/src/test_helpers/ssl_helpers.c.o"

tests/test_suite_ecp.generated: tests/CMakeFiles/test_suite_ecp.generated.dir/test_suite_ecp.generated.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/bignum_helpers.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/certs.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/drivers/hash.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/drivers/platform_builtin_keys.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_aead.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_asymmetric_encryption.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_cipher.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_agreement.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_management.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_mac.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_pake.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_signature.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_stubs.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/psa_memory_poisoning_wrappers.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/psa_test_wrappers.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/random.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/test_memory.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o
tests/test_suite_ecp.generated: CMakeFiles/mbedtls_test_helpers.dir/tests/src/test_helpers/ssl_helpers.c.o
tests/test_suite_ecp.generated: tests/CMakeFiles/test_suite_ecp.generated.dir/build.make
tests/test_suite_ecp.generated: library/libmbedtls.a
tests/test_suite_ecp.generated: library/libmbedx509.a
tests/test_suite_ecp.generated: library/libmbedcrypto.a
tests/test_suite_ecp.generated: 3rdparty/everest/libeverest.a
tests/test_suite_ecp.generated: 3rdparty/p256-m/libp256m.a
tests/test_suite_ecp.generated: tests/CMakeFiles/test_suite_ecp.generated.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable test_suite_ecp.generated"
	cd /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_suite_ecp.generated.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/test_suite_ecp.generated.dir/build: tests/test_suite_ecp.generated
.PHONY : tests/CMakeFiles/test_suite_ecp.generated.dir/build

tests/CMakeFiles/test_suite_ecp.generated.dir/clean:
	cd /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/tests && $(CMAKE_COMMAND) -P CMakeFiles/test_suite_ecp.generated.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test_suite_ecp.generated.dir/clean

tests/CMakeFiles/test_suite_ecp.generated.dir/depend: tests/suites/test_suite_ecp.generated.data
tests/CMakeFiles/test_suite_ecp.generated.dir/depend: tests/test_suite_ecp.generated.c
	cd /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/tests /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86 /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/tests /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86/tests/CMakeFiles/test_suite_ecp.generated.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/test_suite_ecp.generated.dir/depend

