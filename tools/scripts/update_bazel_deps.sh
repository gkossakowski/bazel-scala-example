#!/bin/bash

echo -ne "\033[0;32m"
echo 'Updating bazel dependencies. This will take about five minutes.'
echo -ne "\033[0m"

# update this to move to later versions of this repo:
# https://github.com/johnynek/bazel-deps
GITSHA="4077b694eb32426b948468026129d7827b96d0f2"

set -e

SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $SCRIPTS_DIR

REPO_ROOT=$(git rev-parse --show-toplevel)

BAZEL_DEPS_PATH="$HOME/.bazel-deps-cache/$(basename $REPO_ROOT)"
BAZEL_DEPS_REPO_PATH="$BAZEL_DEPS_PATH/bazel-deps"
BAZEL_DEPS_WORKSPACE="$BAZEL_DEPS_REPO_PATH/WORKSPACE"

if [ ! -f "$BAZEL_DEPS_WORKSPACE" ]; then
  mkdir -p $BAZEL_DEPS_PATH
  cd $BAZEL_DEPS_PATH
  git clone /Users/gkk/stripe/bazel-deps
fi

cd $BAZEL_DEPS_REPO_PATH
git reset --hard $GITSHA || (git fetch && git reset --hard $GITSHA)
$REPO_ROOT/bazel --batch build src/scala/com/github/johnynek/bazel_deps/parseproject_deploy.jar
./gen_maven_deps.sh generate -r $REPO_ROOT -s 3rdparty/workspace.bzl -d bazel_deps.yaml
# now reformat the dependencies to keep them sorted
./gen_maven_deps.sh format-deps -d $REPO_ROOT/bazel_deps.yaml -o
