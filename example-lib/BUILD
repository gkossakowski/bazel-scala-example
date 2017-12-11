scala_library(
    name = "example-lib",
    srcs = glob(["Foo.scala"]),
    visibility = ["//visibility:public"]
)

scala_import(
	name = "intermediate",
	exports = ["//3rdparty/jvm/com/google/guava:guava"],
	visibility = ["//visibility:public"],
)

scala_library(
    name = "example-lib-bar",
    srcs = ["Xyz.scala"],
    deps = [":intermediate"],
    exports = [":intermediate"],
    visibility = ["//visibility:public"],
)

scala_test(
  name = "test",
  srcs = glob(["test/*.scala"]),
  deps = ["example-lib", "example-lib-bar"]
)
