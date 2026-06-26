# DEPRECATED: the DataWerx CLI is now a single `dwx` binary (datawerx-mesh
# design 0016). This cask is no longer GoReleaser-generated — releases now
# produce `Casks/dwx.rb` (cask name `dwx`). It is kept only so existing
# `brew install datawerx/tap/dwxctl` users still get the working v0.2.0 CLIs and
# a migration notice. Remove this file once a release has published `dwx.rb`.
cask "dwxctl" do
  version "0.2.0"

  on_macos do
    on_intel do
      sha256 "f7b48b70884ef3534660f08dc5c369cb6a6549a8a6974421bd6285de2cb9e9f6"
      url "https://github.com/datawerx/datawerx-mesh/releases/download/v#{version}/datawerx_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "0dfba11f5495882d457f1cf8e5f1215a818a5aadff9c50d03cc4426306598961"
      url "https://github.com/datawerx/datawerx-mesh/releases/download/v#{version}/datawerx_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "e1981937a8247e6c8ce1d0d6ed641552a9af2a26e889e330d8b98cd202fbafe6"
      url "https://github.com/datawerx/datawerx-mesh/releases/download/v#{version}/datawerx_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "e04ec014714405d0beb5170b076159d9128ef8ff4acf7c5afd3566b4e6785a8e"
      url "https://github.com/datawerx/datawerx-mesh/releases/download/v#{version}/datawerx_#{version}_linux_arm64.tar.gz"
    end
  end

  name "dwxctl"
  desc "Deprecated — use the unified `dwx` CLI (cask: dwx)"
  homepage "https://github.com/DataWerx/datawerx-mesh"

  livecheck do
    skip "Deprecated; superseded by the dwx cask."
  end

  binary "dwxctl"
  binary "dwx-mcp"

  caveats <<~EOS
    The DataWerx CLI has been unified into a single `dwx` binary.
      • `dwx mesh …` replaces `dwxctl …`
      • `dwx mcp` replaces `dwx-mcp`
      • `dwx signal …` replaces `dwx-signal`

    After the next DataWerx release, switch with:
      brew uninstall datawerx/tap/dwxctl
      brew install   datawerx/tap/dwx

    The `dwxctl` and `dwx-mcp` commands continue to work as deprecated aliases.
  EOS

  # No zap stanza required

end
