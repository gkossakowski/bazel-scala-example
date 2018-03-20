java_library(
	name="example-java",
	srcs=["foo/A.java"])

java_runtime_suite(
    name = "jdk",
    default = ":myjdk",
    visibility = ["//visibility:public"])

java_runtime(
    name = "myjdk",
    srcs = [], # gibberish proof of concept
    java_home = "/usr/lib/jvm/java-8-openjdk-amd64/")
