class Riskkernel < Formula
  desc "Self-hosted reliability runtime for AI agents (budgets, approvals, crash-resume)"
  homepage "https://github.com/prashar32/riskkernel"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/prashar32/riskkernel/releases/download/v0.8.0/riskkernel_0.8.0_darwin_arm64.tar.gz"
      sha256 "0dd6e860da9fda8236735eeb0dcf314777cff2a06d006f553876e13ba6873cd1"
    end
    on_intel do
      url "https://github.com/prashar32/riskkernel/releases/download/v0.8.0/riskkernel_0.8.0_darwin_amd64.tar.gz"
      sha256 "bcf0ddf1bafe09ffc248289194314071916ce40fe17b96f7b906e25b3fca86f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prashar32/riskkernel/releases/download/v0.8.0/riskkernel_0.8.0_linux_arm64.tar.gz"
      sha256 "092c20944d04aaf199028779f0e09c58029a4e32ca2e96e854e9072b444229c6"
    end
    on_intel do
      url "https://github.com/prashar32/riskkernel/releases/download/v0.8.0/riskkernel_0.8.0_linux_amd64.tar.gz"
      sha256 "25a1b9f25b14922a98c3f46d155aedb6167115eae233c50155226067f9a4b4d6"
    end
  end

  def install
    bin.install "riskkernel"
  end

  test do
    assert_match "riskkernel", shell_output("#{bin}/riskkernel version")
  end
end
