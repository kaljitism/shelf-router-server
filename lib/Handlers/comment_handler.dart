import 'package:server/Utils/logger.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

Response handleComment(Request request) {
  final handlerPath = request.url.toString();
  final id = request.params['id'];

  if (id != null) {
    final response = 'Comment: $id';
    logger(handlerPath, response); // Log the response
    return Response.ok(response);
  } else {
    final response = 'Comment id not specified';
    logger(handlerPath, response); // Log the response
    return Response.notFound(response);
  }
}
