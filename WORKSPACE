workspace(name = "scala_example")

BAZEL_VERSION = "0.6.1"
BAZEL_VERSION_SHA = "2157b05309614d6af0e4bbc6065987aede590822634a0522161f3af5d647abc9"


rules_scala_version="bca505cf917b39a75f808d56afadf714a87b3a88" # update this as needed
git_repository(
    name = "io_bazel_rules_scala",
    # this is pointing at WIP version of rules_scala that has preliminary Scala 2.12
    # support. Check out the main rules_scala repo that will have a 2.12-specifc branch
    # soon.
    remote = "git://github.com/bazelbuild/rules_scala",
    commit = "c5f7fae8d7540148b78a8d1cecef459397dbb62b"
)
load("@io_bazel_rules_scala//scala:scala.bzl", "scala_repositories")
scala_repositories()

# use bazel-deps to manage transitive maven dependencies
# https://github.com/johnynek/bazel-deps
load("//3rdparty:workspace.bzl", "maven_dependencies")
maven_dependencies()
