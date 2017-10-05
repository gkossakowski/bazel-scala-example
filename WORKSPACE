workspace(name = "scala_example")

BAZEL_VERSION = "0.5.4"
BAZEL_VERSION_SHA = "2157b05309614d6af0e4bbc6065987aede590822634a0522161f3af5d647abc9"


rules_scala_version="bca505cf917b39a75f808d56afadf714a87b3a88" # update this as needed
git_repository(
    name = "io_bazel_rules_scala",
    remote = "git://github.com/gkossakowski/rules_scala",
    commit = "bca505cf917b39a75f808d56afadf714a87b3a88"
)
load("@io_bazel_rules_scala//scala:scala.bzl", "scala_repositories")
scala_repositories()

# use bazel-deps to manage transitive maven dependencies
# https://github.com/johnynek/bazel-deps
load("//3rdparty:workspace.bzl", "maven_dependencies")
load("//3rdparty:maven_load.bzl", "maven_load")
maven_dependencies(maven_load)
