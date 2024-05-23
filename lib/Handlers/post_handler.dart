import 'package:server/Utils/logger.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

Response handlePost(Request request) {
  final handlerPath = request.url.toString();
  final id = request.params['id'];

  if (id != null) {
    final response = 'Post: $id';
    logger(handlerPath, response); // Log the response
    return Response.ok(response);
  } else {
    final response = 'Post id not specified';
    logger(handlerPath, response.toString()); // Log the response
    return Response.notFound(response);
  }
}
