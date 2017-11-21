load("//3rdparty:scala_import.bzl", "scala_import")
scala_library(
    name = "algebird_core",
    exports = [
        "//3rdparty/jvm/com/googlecode/javaewah:JavaEWAH",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//3rdparty/jvm/org/scala_lang:scala_reflect",
        ":algebird_core_scala_import"
    ],
    visibility = [
        "//visibility:public"
    ]
)
scala_import(
  name = "algebird_core_scala_import",
  jar = "//external:jar/com/twitter/algebird_core_2_11"  
)
