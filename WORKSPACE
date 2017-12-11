workspace(name = "scala_example")

BAZEL_VERSION = "0.8.0"
BAZEL_VERSION_SHA = "2157b05309614d6af0e4bbc6065987aede590822634a0522161f3af5d647abc9"


git_repository(
    name = "io_bazel_rules_scala",
    # this is pointing at WIP version of rules_scala that has preliminary Scala 2.12
    # support.
    remote = "git://github.com/bazelbuild/rules_scala",
    commit = "a7b5a904f5b47b53b0b05a7f495e58abb85f3c9e"
)
# if you're hacking rules_Scala, use local_repository
# local_repository(
# 	name="io_bazel_rules_scala",
# 	path="/Users/gkk/stripe/rules_scala"
# 	)
load("@io_bazel_rules_scala//scala:scala.bzl", "scala_repositories")
scala_repositories()

# use bazel-deps to manage transitive maven dependencies
# https://github.com/johnynek/bazel-deps
load("//3rdparty:workspace.bzl", "maven_dependencies")
maven_dependencies()
