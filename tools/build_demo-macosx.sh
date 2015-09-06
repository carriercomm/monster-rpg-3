cd tgui3
git pull --rebase
cd build
make -j2
~/bin/codesign.sh libtgui3.dylib
cp libtgui3.dylib ~/code/mo3_demo/MonsterRPG3Demo.app/Contents/MacOS
cd ../../Nooskewl_Engine
git pull --rebase
cd build
make -j2
~/bin/codesign.sh libNooskewl_Engine.dylib
~/bin/codesign.sh Nooskewl_Runner
cp libNooskewl_Engine.dylib Nooskewl_Runner ~/code/mo3_demo/MonsterRPG3Demo.app/Contents/MacOS
cd ../../monster-rpg-3
git pull --rebase
cd build
cmake .. -DDEMO=on
make -j2
~/bin/codesign.sh libgame.dylib
cp libgame.dylib ~/code/mo3_demo/MonsterRPG3Demo.app/Contents/MacOS
cd ../../monster-rpg-3-demo-data
git pull --rebase
../Nooskewl_Engine/tools/cpa/mkcpa-osx.sh ../mo3_demo/data.cpa
cd ../mo3_demo
rm data.cpa.uncompressed
mv data.cpa MonsterRPG3Demo.app/Contents/Resources
