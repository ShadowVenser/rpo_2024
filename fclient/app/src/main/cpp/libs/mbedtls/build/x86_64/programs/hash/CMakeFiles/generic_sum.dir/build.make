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
CMAKE_BINARY_DIR = /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64

# Include any dependencies generated for this target.
include programs/hash/CMakeFiles/generic_sum.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include programs/hash/CMakeFiles/generic_sum.dir/compiler_depend.make

# Include the progress variables for this target.
include programs/hash/CMakeFiles/generic_sum.dir/progress.make

# Include the compile flags for this target's objects.
include programs/hash/CMakeFiles/generic_sum.dir/flags.make

programs/hash/CMakeFiles/generic_sum.dir/generic_sum.c.o: programs/hash/CMakeFiles/generic_sum.dir/flags.make
programs/hash/CMakeFiles/generic_sum.dir/generic_sum.c.o: /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/programs/hash/generic_sum.c
programs/hash/CMakeFiles/generic_sum.dir/generic_sum.c.o: programs/hash/CMakeFiles/generic_sum.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object programs/hash/CMakeFiles/generic_sum.dir/generic_sum.c.o"
	cd /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/programs/hash && /home/vss_admin/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --sysroot=/home/vss_admin/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT programs/hash/CMakeFiles/generic_sum.dir/generic_sum.c.o -MF CMakeFiles/generic_sum.dir/generic_sum.c.o.d -o CMakeFiles/generic_sum.dir/generic_sum.c.o -c /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/programs/hash/generic_sum.c

programs/hash/CMakeFiles/generic_sum.dir/generic_sum.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/generic_sum.dir/generic_sum.c.i"
	cd /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/programs/hash && /home/vss_admin/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --sysroot=/home/vss_admin/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/programs/hash/generic_sum.c > CMakeFiles/generic_sum.dir/generic_sum.c.i

programs/hash/CMakeFiles/generic_sum.dir/generic_sum.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/generic_sum.dir/generic_sum.c.s"
	cd /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/programs/hash && /home/vss_admin/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=x86_64-none-linux-android21 --sysroot=/home/vss_admin/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/programs/hash/generic_sum.c -o CMakeFiles/generic_sum.dir/generic_sum.c.s

# Object files for target generic_sum
generic_sum_OBJECTS = \
"CMakeFiles/generic_sum.dir/generic_sum.c.o"

# External object files for target generic_sum
generic_sum_EXTERNAL_OBJECTS = \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/bignum_helpers.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/certs.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/hash.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/platform_builtin_keys.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_aead.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_asymmetric_encryption.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_cipher.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_agreement.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_management.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_mac.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_pake.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_signature.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_stubs.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/psa_memory_poisoning_wrappers.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/psa_test_wrappers.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/random.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/test_memory.c.o" \
"/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o"

programs/hash/generic_sum: programs/hash/CMakeFiles/generic_sum.dir/generic_sum.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/bignum_helpers.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/certs.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/drivers/hash.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/drivers/platform_builtin_keys.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_aead.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_asymmetric_encryption.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_cipher.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_agreement.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_management.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_mac.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_pake.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_signature.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_stubs.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/psa_memory_poisoning_wrappers.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/psa_test_wrappers.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/random.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/test_memory.c.o
programs/hash/generic_sum: CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o
programs/hash/generic_sum: programs/hash/CMakeFiles/generic_sum.dir/build.make
programs/hash/generic_sum: library/libmbedcrypto.so
programs/hash/generic_sum: 3rdparty/everest/libeverest.a
programs/hash/generic_sum: 3rdparty/p256-m/libp256m.a
programs/hash/generic_sum: programs/hash/CMakeFiles/generic_sum.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable generic_sum"
	cd /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/programs/hash && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/generic_sum.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programs/hash/CMakeFiles/generic_sum.dir/build: programs/hash/generic_sum
.PHONY : programs/hash/CMakeFiles/generic_sum.dir/build

programs/hash/CMakeFiles/generic_sum.dir/clean:
	cd /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/programs/hash && $(CMAKE_COMMAND) -P CMakeFiles/generic_sum.dir/cmake_clean.cmake
.PHONY : programs/hash/CMakeFiles/generic_sum.dir/clean

programs/hash/CMakeFiles/generic_sum.dir/depend:
	cd /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls /home/vss_admin/Projects/rpo_2024/libs/mbedtls/mbedtls/programs/hash /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64 /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/programs/hash /home/vss_admin/Projects/rpo_2024/libs/mbedtls/build/x86_64/programs/hash/CMakeFiles/generic_sum.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/hash/CMakeFiles/generic_sum.dir/depend

