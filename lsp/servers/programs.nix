{
  plugins = {
    lsp.servers = {
      # Solidity
      solc.enable = true;
      # Swift
      sourcekit.enable = true;
      # Arduino
      arduino_language_server.enable = true;
      # Rust
      rust_analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
      # Java
      jdtls.enable = true;
      # Python
      pyright.enable = true;
      # C/C++
      ccls = {
        enable = true;
        initOptions.clang.extraArgs = ["-Wno-attributes"];
      };
      # Dart
      dartls.enable = true;
      # Godot
      gdscript = {
        enable = true;
        package = null;
      };
      # Go
      gopls.enable = true;
      # Kotlin
      kotlin_language_server.enable = true;
      # C#
      csharp_ls.enable = true;
      # Asembly
      asm_lsp.enable = true;
    };

    none-ls.sources.formatting = {
      # Python
      black.enable = true;
      # Kotlin
      ktlint.enable = true;
      # Java
      google_java_format.enable = true;
      # GDscript
      gdformat.enable = true;
      # C/C++
      clang_format.enable = true;
      # Dart
      dart_format.enable = true;
      # Go
      golines.enable = true;
      # Csharp
      csharpier.enable = true;
    };
  };
}
