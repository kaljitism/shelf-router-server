import 'dart:io';

void logger(String handlerPath, String response) {
  stdout.write(
      "\n\u001b[42m\u001b[30;1m Handler \u001b[0m\u001b[0m: \u001b[32;1m ${handlerPath.toString()} \u001b[0m\n");
  stdout.write(
      "\u001b[44;1m Response Body \u001b[0m: \u001b[34;1m ${response.toString()} \u001b[0m\n");
}
