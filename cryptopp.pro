#! [0]
TEMPLATE        = lib
QT             -= core
QT             -= qt
QT             -= widgets
QT             -= xml
CONFIG         += console
HEADERS         = $$files(*.h)
SOURCES         = $$files(*.cpp)
# \
                   # $$files(*.S)
TARGET          = $$qtLibraryTarget(cryptopp)
DESTDIR         = ../dll
#! [0]

#DEFINES += MAKE_TEST_LIB
DEFINES += CRYPTOPP_EXPORTS
#DEFINES += CRYPTOPP_USE_AES_GENERATOR
DEFINES += CRYPTOPP_DISABLE_ASM
DEFINES -= __clang__

# CONFIG += staticlib
# CONFIG -= debug_and_release debug_and_release_target
LIBS += -lws2_32

# QMAKE_CXXFLAGS_DEBUG += /MDd
# QMAKE_CXXFLAGS_RELEASE += /MD



#  #! [1]
#
#  #add additional compiler for asm source using MS 2017 macro assembler 64 bit
#
#  ml64.name = ML64 ${QMAKE_FILE_IN}
#  ml64.input = ASM_FILES
#  ml64.variable_out = OBJECTS
#  #ml64.commands = ML64 /c ${QMAKE_FILE_NAME} ${ASFLAGS64} /Fo ${QMAKE_FILE_OUT}
#  ml64.commands = ML64 /c ${QMAKE_FILE_NAME}  /nologo /D_M_X64 /W3 /Cx /Zi /Fo ${QMAKE_FILE_OUT}
#  #ml64.commands = ML64 /c ${QMAKE_FILE_NAME} /Fo ${QMAKE_FILE_OUT}
#  ml64.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_IN_BASE}$${first(QMAKE_EXT_OBJ)}
#  ml64.CONFIG += target_predeps
#  QMAKE_EXTRA_COMPILERS  += ml64
#
#  # nasm.name = nasm ${QMAKE_FILE_IN}
#  # nasm.input = ASM_FILES
#  # nasm.variable_out = OBJECTS
#  # nasm.commands = nasm -f win64 ${QMAKE_FILE_IN} -o ${QMAKE_FILE_OUT}
#  # nasm.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_IN_BASE}$${first(QMAKE_EXT_OBJ)}
#  # nasm.CONFIG += target_predeps
#  # QMAKE_EXTRA_COMPILERS  += nasm
#
#  #ASFLAGS64 = /nologo /D_M_X64 /W3 /Cx /Zi
#  ASM_FILES += $$files(*.asm)
#
#  #! [1]



# install
target.path = ../dll
INSTALLS += target

CONFIG += install_ok  # Do not cargo-cult this!
uikit: CONFIG += debug_and_release

