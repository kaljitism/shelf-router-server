import 'package:server/Utils/logger.dart';
import 'package:shelf/shelf.dart';

Response handleAdmin(Request request) {
  final handlerPath = request.url.toString();
  final resBody = 'Admin Access Granted!';
  logger(handlerPath, resBody);
  return Response.ok(resBody);
}
