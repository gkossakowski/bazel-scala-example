workspace(name = "scala_example")

BAZEL_VERSION = "0.8.1"
BAZEL_VERSION_SHA = "dfd0761e0b7e36c1d74c928ad986500c905be5ebcfbc29914d574af1db7218cf"


git_repository(
    name = "io_bazel_rules_scala",
    remote = "git://github.com/bazelbuild/rules_scala",
    commit = "c79adc9d32a5f5ed7e42c7408f65d8eec7c87a6f"
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

# Here we set up the bindings to the jars the thrift rules need
# this must come after we load all the dependencies
# this replaces what would be called here:
# https://github.com/bazelbuild/rules_scala/blob/692a867a1f65f61c1a92fad6884ee7c414095c82/twitter_scrooge/twitter_scrooge.bzl#L9
bind(name = 'io_bazel_rules_scala/dependency/thrift/libthrift', actual = '@org_apache_thrift_libthrift//jar')
bind(name = 'io_bazel_rules_scala/dependency/thrift/scrooge_core', actual = '@com_twitter_scrooge_core_2_11//jar')
bind(name = 'io_bazel_rules_scala/dependency/thrift/scrooge_generator', actual = '@com_twitter_scrooge_generator_2_11//jar')
bind(name = 'io_bazel_rules_scala/dependency/thrift/util_core', actual = '@com_twitter_util_core_2_11//jar')
bind(name = 'io_bazel_rules_scala/dependency/thrift/util_logging', actual = '@com_twitter_util_logging_2_11//jar')
