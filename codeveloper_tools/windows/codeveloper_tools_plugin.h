#ifndef FLUTTER_PLUGIN_CODEVELOPER_TOOLS_PLUGIN_H_
#define FLUTTER_PLUGIN_CODEVELOPER_TOOLS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace codeveloper_tools {

class CodeveloperToolsPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  CodeveloperToolsPlugin();

  virtual ~CodeveloperToolsPlugin();

  // Disallow copy and assign.
  CodeveloperToolsPlugin(const CodeveloperToolsPlugin&) = delete;
  CodeveloperToolsPlugin& operator=(const CodeveloperToolsPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace codeveloper_tools

#endif  // FLUTTER_PLUGIN_CODEVELOPER_TOOLS_PLUGIN_H_
