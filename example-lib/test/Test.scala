import org.scalatest._

class TestSuite extends FlatSpec {
  "things" should "work" in {
    assert(Foo.message == "hello world")
  }
  "things" should "not work" in {
    assert(Foo.message == "hell2o world")
  }
}
