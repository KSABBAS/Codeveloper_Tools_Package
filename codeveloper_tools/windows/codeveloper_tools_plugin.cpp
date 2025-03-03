#include "include/codeveloper_tools/codeveloper_tools_plugin.h"

void CodeveloperToolsPluginRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  // Register the plugin with the Flutter engine.
  CodeveloperToolsPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
