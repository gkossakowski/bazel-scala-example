load("@io_bazel_rules_scala//thrift:thrift.bzl", "thrift_library")
load("@io_bazel_rules_scala//twitter_scrooge:twitter_scrooge.bzl", "scrooge_scala_library")

scrooge_scala_library(
    name = "example-thrift",
    remote_jars = [],
    visibility = ["//visibility:public"],
    deps = [
        ":thrift",
    ],
)

thrift_library(
    name = "thrift",
    srcs = glob(["*.thrift"]),
)
