# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rasactl < Formula
  desc "rasactl deploys Rasa X / Enterprise on your local or remote Kubernetes cluster and manages Rasa X / Enterprise deployments."
  homepage "https://github.com/RasaHQ/rasactl"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/RasaHQ/rasactl/releases/download/0.5.0/rasactl_0.5.0_darwin_amd64.tar.gz"
      sha256 "a45b62a2875869b40d31eaf7ed74f2f2f7832ddfc6571f46ab11854c6fc5fca1"

      def install
        bin.install "rasactl"
        bash_completion.install "completions/rasactl.bash" => "rasactl"
        zsh_completion.install "completions/rasactl.zsh" => "_rasactl"
        fish_completion.install "completions/rasactl.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/RasaHQ/rasactl/releases/download/0.5.0/rasactl_0.5.0_darwin_arm64.tar.gz"
      sha256 "529f1a11bf2c34b02a2daf47ba05899d6e6890e6df741cebc56b928e1eb02d73"

      def install
        bin.install "rasactl"
        bash_completion.install "completions/rasactl.bash" => "rasactl"
        zsh_completion.install "completions/rasactl.zsh" => "_rasactl"
        fish_completion.install "completions/rasactl.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/RasaHQ/rasactl/releases/download/0.5.0/rasactl_0.5.0_linux_amd64.tar.gz"
      sha256 "9c970d5a2ce9af3436b03f6d3b86c6e1fefad61e21d32c4f521e225a6b7a8b80"

      def install
        bin.install "rasactl"
        bash_completion.install "completions/rasactl.bash" => "rasactl"
        zsh_completion.install "completions/rasactl.zsh" => "_rasactl"
        fish_completion.install "completions/rasactl.fish"
      end
    end
  end

  test do
    system "#{bin}/rasactl --version"
  end
end
