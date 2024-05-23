import 'package:server/Utils/logger.dart';
import 'package:shelf/shelf.dart';

Response handleRoot(Request request) {
  final handlerPath = request.url.toString();
  final resBody = 'Welcome!';
  logger(handlerPath, resBody);
  return Response.ok(resBody);
}
