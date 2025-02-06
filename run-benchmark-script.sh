run-benchmark --plan speedometer3 --build-directory=/Users/nathansolomon/workspace/OpenSource/WebKitBuild/Release --count 1
rm speedometer3.result
run-benchmark --plan speedometer3 --build-directory=/Users/nathansolomon/workspace/OpenSource/tmp/ToT/Release --count 1
rm speedometer3.result
for ((i = 0; i < 8; i++)); do
    run-benchmark --plan speedometer3 --build-directory=/Users/nathansolomon/workspace/OpenSource/WebKitBuild/Release
    mv speedometer3.result Patched$i.result
    run-benchmark --plan speedometer3 --build-directory=/Users/nathansolomon/workspace/OpenSource/tmp/ToT/Release
    mv speedometer3.result ToT$i.result
done
