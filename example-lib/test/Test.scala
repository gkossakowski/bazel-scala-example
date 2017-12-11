import com.google.common.cache.Cache
import org.scalatest._

class TestSuite extends FlatSpec {
  "things" should "work" in {
    assert(Foo.message == "hello world")
  }
  "things" should "work for java import" in {
    assert(Xyz.message == classOf[Cache[String, String]])
  }
}
