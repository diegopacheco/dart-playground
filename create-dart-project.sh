#!/bin/bash

mkdir src/
touch src/main.dart
touch run.sh
chmod +x ./run.sh

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
