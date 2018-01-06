scala_import(
    name = "algebird_core",
    exports = [
        "//3rdparty/jvm/com/googlecode/javaewah:JavaEWAH",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//3rdparty/jvm/org/scala_lang:scala_reflect"
    ],
    jars = [
        "//external:jar/com/twitter/algebird_core_2_11"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "jsr166e",
    exports = [
        "//external:jar/com/twitter/jsr166e"
    ],
    visibility = [
        "//visibility:public"
    ]
)



scala_import(
    name = "scrooge_core",
    exports = [
        "//3rdparty/jvm/org/apache/thrift:libthrift",
        "//3rdparty/jvm/org/scala_lang:scala_library"
    ],
    jars = [
        "//external:jar/com/twitter/scrooge_core_2_11"
    ],
    visibility = [
        "//visibility:public"
    ]
)



scala_import(
    name = "scrooge_generator",
    exports = [
        "//3rdparty/jvm/com/github/scopt:scopt_2_11",
        "//3rdparty/jvm/com/github/spullara/mustache/java:compiler",
        "//3rdparty/jvm/com/google/code/findbugs:jsr305",
        "//3rdparty/jvm/commons_cli:commons_cli",
        "//3rdparty/jvm/org/apache/thrift:libthrift",
        "//3rdparty/jvm/org/codehaus/plexus:plexus_utils",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        ":util_codec_2_11",
        ":util_core_2_11",
        ":util_logging_2_11"
    ],
    jars = [
        "//external:jar/com/twitter/scrooge_generator_2_11"
    ],
    visibility = [
        "//visibility:public"
    ]
)



scala_import(
    name = "scrooge_serializer",
    exports = [
        "//3rdparty/jvm/org/apache/thrift:libthrift",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        ":scrooge_core",
        ":util_app_2_11",
        ":util_codec_2_11"
    ],
    jars = [
        "//external:jar/com/twitter/scrooge_serializer_2_11"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "util_app_2_11",
    exports = [
        "//external:jar/com/twitter/util_app_2_11",
        ":util_core_2_11",
        ":util_registry_2_11"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "util_codec_2_11",
    exports = [
        "//3rdparty/jvm/commons_codec:commons_codec",
        "//external:jar/com/twitter/util_codec_2_11"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "util_core_2_11",
    exports = [
        "//3rdparty/jvm/org/scala_lang/modules:scala_parser_combinators_2_11",
        "//external:jar/com/twitter/util_core_2_11",
        ":jsr166e",
        ":util_function_2_11"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "util_function_2_11",
    exports = [
        "//external:jar/com/twitter/util_function_2_11"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "util_lint_2_11",
    exports = [
        "//external:jar/com/twitter/util_lint_2_11"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "util_logging_2_11",
    exports = [
        "//external:jar/com/twitter/util_logging_2_11",
        ":util_app_2_11",
        ":util_stats_2_11"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "util_registry_2_11",
    exports = [
        "//external:jar/com/twitter/util_registry_2_11"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "util_stats_2_11",
    exports = [
        "//external:jar/com/twitter/util_stats_2_11",
        ":util_lint_2_11"
    ],
    visibility = [
        "//visibility:public"
    ]
)


