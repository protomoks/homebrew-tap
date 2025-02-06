class Pmok < Formula
  desc "Protomok CLI"
  homepage "https://protomok.com"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protomoks/pmok/releases/download/v0.3.2/pmok_Darwin_arm64.tar.gz"
      sha256 "de79592c3e42609872e3af82d228ce4a8d68ab38dd5488e79117d66aca2b5ac5"

      def install
        bin.install "pmok"
        (bash_completion/"pmok").write `#{bin}/pmok completion bash`
        (fish_completion/"pmok.fish").write `#{bin}/pmok completion fish`
        (zsh_completion/"_pmok").write `#{bin}/pmok completion zsh`
      end
    end
  end
end