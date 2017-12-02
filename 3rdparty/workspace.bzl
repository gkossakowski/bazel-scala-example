def declare_maven(hash):
    native.maven_jar(
        name = hash["name"],
        artifact = hash["artifact"],
        sha1 = hash["sha1"],
        repository = hash["repository"]
    )
    native.bind(
        name = hash["bind"],
        actual = hash["actual"]
    )

def maven_dependencies(callback = declare_maven):
    callback({"artifact": "com.google.guava:guava:21.0", "lang": "java", "sha1": "3a3d111be1be1b745edfa7d91678a12d7ed38709", "repository": "http://central.maven.org/maven2/", "name": "com_google_guava_guava", "actual": "@com_google_guava_guava//jar", "bind": "jar/com/google/guava/guava"})
    callback({"artifact": "com.googlecode.javaewah:JavaEWAH:0.6.6", "lang": "java", "sha1": "45eb0e27524454a02111136cf4da94476b376d11", "repository": "http://central.maven.org/maven2/", "name": "com_googlecode_javaewah_JavaEWAH", "actual": "@com_googlecode_javaewah_JavaEWAH//jar", "bind": "jar/com/googlecode/javaewah/JavaEWAH"})
    callback({"artifact": "com.twitter:algebird-core_2.11:0.12.1", "lang": "scala", "sha1": "86fa803e493b84157def202de47d2631bb29e46a", "repository": "http://central.maven.org/maven2/", "name": "com_twitter_algebird_core_2_11", "actual": "@com_twitter_algebird_core_2_11//jar:file", "bind": "jar/com/twitter/algebird_core_2_11"})
    callback({"artifact": "org.scala-lang:scala-library:2.11.7", "lang": "java", "sha1": "f75e7acabd57b213d6f61483240286c07213ec0e", "repository": "http://central.maven.org/maven2/", "name": "org_scala_lang_scala_library", "actual": "@org_scala_lang_scala_library//jar", "bind": "jar/org/scala_lang/scala_library"})
    callback({"artifact": "org.scala-lang:scala-reflect:2.11.7", "lang": "java", "sha1": "bf1649c9d33da945dea502180855b56caf06288c", "repository": "http://central.maven.org/maven2/", "name": "org_scala_lang_scala_reflect", "actual": "@org_scala_lang_scala_reflect//jar", "bind": "jar/org/scala_lang/scala_reflect"})
