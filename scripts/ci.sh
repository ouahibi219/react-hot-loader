set -e

echo "Building project"
yarn build
echo "\n\n"

echo "Linting"
yarn lint
echo "\n\n"

echo "Installing React 15"
yarn add react@15 react-dom@15 react-test-renderer@15 --pure-lockfile
echo "\n\n"

yarn test:react-dom:prepare

# echo "Running tests on React 15 - Babel ES2015"
# yarn test:es2015
# echo "\n\n"

# echo "Running tests on React 15 - Babel Modern"
# yarn test:modern
# echo "\n\n"
# echo "\n\n"

echo "Installing React 16.10"
yarn add react@16 react-dom@16.10 react-test-renderer@16.10 --pure-lockfile
echo "\n\n"

yarn test:react-dom:prepare

echo "Running tests on React 16.10 - Babel ES2015"
yarn test:es2015
echo "\n\n"

echo "Running tests on React 16.10 - Babel Modern"
yarn test:modern --coverage && codecov
echo "\n\n"



echo "Installing React 16:latest"
yarn add react@16 react-dom@16 react-test-renderer@16 --pure-lockfile
echo "\n\n"

yarn test:react-dom:prepare

echo "Running tests on React 16:latest - Babel ES2015"
yarn test:es2015
echo "\n\n"

echo "Running tests on React 16:latest - Babel Modern"
yarn test:modern --coverage && codecov
echo "\n\n"
