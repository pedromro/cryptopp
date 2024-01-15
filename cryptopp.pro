#! [0]
TEMPLATE        = lib
QT             -= core
QT             -= widgets
QT             -= xml
HEADERS         = $$files(*.h)
SOURCES         = $$files(*.cpp) \
					$$files(*.S) \
					$$files(*.asm)
TARGET          = $$qtLibraryTarget(cryptopp)
DESTDIR         = ../dll
#! [0]

#DEFINES += MAKE_TEST_LIB
#DEFINES += CRYPTOPP_EXPORTS
#DEFINES += CRYPTOPP_USE_AES_GENERATOR


# install
target.path = ../dll
INSTALLS += target

CONFIG += install_ok  # Do not cargo-cult this!
uikit: CONFIG += debug_and_release

