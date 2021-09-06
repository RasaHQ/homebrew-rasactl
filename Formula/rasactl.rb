# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rasactl < Formula
  desc "rasactl deploys Rasa X / Enterprise on your local or remote Kubernetes cluster and manages Rasa X / Enterprise deployments."
  homepage "https://github.com/RasaHQ/rasactl"
  version "0.0.16"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/RasaHQ/rasactl/releases/download/0.0.16/rasactl_0.0.16_darwin_amd64.tar.gz"
      sha256 "1f5de1bfb19ce3957aff807af94446cf1b28494162536d76d7bc8339ec315ac1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/RasaHQ/rasactl/releases/download/0.0.16/rasactl_0.0.16_darwin_arm64.tar.gz"
      sha256 "8c507e59cf18a0ab59f53901d3f17656426835f55bc3141eb33970b7374eab44"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/RasaHQ/rasactl/releases/download/0.0.16/rasactl_0.0.16_linux_amd64.tar.gz"
      sha256 "4159ab8c4a4a88996978d3e46d6691fd370124a8248ff5aa8c19c4816d007d36"
    end
  end

  def install
    bin.install "rasactl"
    bash_completion.install "completions/rasactl.bash" => "rasactl"
    zsh_completion.install "completions/rasactl.zsh" => "_rasactl"
    fish_completion.install "completions/rasactl.fish"
  end

  test do
    system "#{bin}/rasactl --version"
  end
end
