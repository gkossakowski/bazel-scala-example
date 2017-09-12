workspace(name = "scala_example")

BAZEL_VERSION = "0.5.2"
BAZEL_VERSION_SHA = "2418c619bdd44257a170b85b9d2ecb75def29e751b725e27186468ada2e009ea"


rules_scala_version="bca505cf917b39a75f808d56afadf714a87b3a88" # update this as needed
git_repository(
    name = "io_bazel_rules_scala",
    remote = "git://github.com/gkossakowski/rules_scala",
    commit = "bca505cf917b39a75f808d56afadf714a87b3a88"
)
load("@io_bazel_rules_scala//scala:scala.bzl", "scala_repositories")
scala_repositories()

load("//3rdparty:workspace.bzl", "maven_dependencies")
load("//3rdparty:load.bzl", "declare_maven")
maven_dependencies(declare_maven)
