// // /                    (root handler)
// // /admin             (admin handler)
// // -/user           (users handler)
// // ----/<id>          (specific user handler)
// // ----/role        (user roles handler)
// // -/post           (posts handler)
// // ----/<id>          (specific post handler)
// // -/comment        (comments handler)
// // ----/<id>          (specific comment handler)
//
// // http://your-app.com/admin/users/987/roles

import 'dart:io';

import 'package:server/Handlers/admin_handler.dart';
import 'package:server/Handlers/comment_handler.dart';
import 'package:server/Handlers/post_handler.dart';
import 'package:server/Handlers/root_handler.dart';
import 'package:server/Handlers/user_handler.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

void main(List<String> args) async {
  final app = Router();
  final adminRouter = Router();
  final userRouter = Router();
  final postRouter = Router();
  final commentRouter = Router();

  // Root Handler
  app.get('/', handleRoot);

  // Admin Handler
  adminRouter.get('/', handleAdmin);

  // User Handlers
  userRouter.get('/<id>', handleUser);
  userRouter.get('/<id>/<role>', handleUserRole);

  // Post Handlers
  postRouter.get('/<id>', handlePost);

  // Comment Handlers
  commentRouter.get('/<id>', handleComment);

  // API Routing Architecture
  app.mount('/admin', adminRouter.call);
  adminRouter.mount('/user', userRouter.call);
  adminRouter.mount('/post', postRouter.call);
  adminRouter.mount('/comment', commentRouter.call);

  // Server
  final server = await serve(app.call, InternetAddress.loopbackIPv4, 8080);
  print(server.connectionsInfo().toString());
}
