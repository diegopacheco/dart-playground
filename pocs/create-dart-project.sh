#!/bin/bash

mkdir src/
mkdir test/
touch src/main.dart
touch run.sh
chmod +x ./run.sh
touch pubspec.yaml

projectname=${PWD##*/}

echo "name: $projectname
description: >-
  TBD
version: 1.0.0
homepage: https://github.com/diegopacheco/dart-playground/tree/main/pocs/$projectname
documentation: https://github.com/diegopacheco/dart-playground/blob/main/pocs/$projectname/README.md

environment:
  sdk: '>=2.12.0 <3.0.0'
  
#dependencies:

dev_dependencies:
  test: '>=1.24.5 <2.0.0'" > pubspec.yaml

echo "void main() {
  print('Hello, World!');
}" > src/main.dart

echo "#!/bin/bash
dart src/main.dart" > run.sh

touch README.md
echo "### Build & Run
\`\`\`bash
dart src/main.dart
\`\`\`" > README.md
