import 'package:article_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class ExampleEndpoint extends Endpoint {
  Future<String> hello(Session session, String name) async {
    return 'Hello $name';
  }

  Future<Article> getArticle(Session session, int id) async {
    return Article(
        title: 'title',
        content: 'content',
        createdAt: DateTime.now(),
        isPrime: true);
  }
}
