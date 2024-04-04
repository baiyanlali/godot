scons platform=macos arch=arm64 tests=yes
cp -r misc/dist/macos_tools.app bin/Godot.app
mkdir -p bin/Godot.app/Contents/MacOS
cp bin/godot.macos.editor.arm64 bin/Godot.app/Contents/MacOS/Godot
chmod +x bin/Godot.app/Contents/MacOS/Godot
codesign --force --timestamp --options=runtime --entitlements misc/dist/macos/editor.entitlements -s - bin/Godot.app

./bin/godot.macos.editor.arm64 --test gdscript-compiler test.gd
