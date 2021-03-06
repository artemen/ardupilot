#git submodule init && git submodule update
export TOOLCHAIN

ROOT=`cd ../../../../..; pwd`

export PATH=/usr/local/bin:$PATH

echo $ROOT


( # AirBotF4 board
 cd $ROOT/ArduCopter
 make f4light-clean 
 make f4light BOARD=f4light_Revolution_EE128
) && (
 cd $ROOT/ArduPlane
 make f4light-clean
 make f4light BOARD=f4light_Revolution_EE128
)

# at 4e017bf5b3da4f2a9ffc2e1cc0a37b94edac2bdc
