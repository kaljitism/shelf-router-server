import 'package:server/Utils/logger.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

Response handleUser(Request request) {
  final handlerPath = request.url.toString();
  final id = request.params['id'];

  if (id != null) {
    final response = 'User: $id';
    logger(handlerPath, response); // Log the response
    return Response.ok(response);
  } else {
    final response = 'User id not specified';
    logger(handlerPath, response); // Log the response
    return Response.notFound(response);
  }
}

Response handleUserRole(Request request) {
  final handlerPath = request.url.toString();
  final id = request.params['id']!;
  final role = request.params['role']!;
  final response = '$role user: $id';
  logger(handlerPath, response); // Log the response
  return Response.ok(response);
}
