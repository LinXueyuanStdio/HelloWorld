object HelloWorld extends App {
  Stream.continually("HelloWorld").foreach(print)
}