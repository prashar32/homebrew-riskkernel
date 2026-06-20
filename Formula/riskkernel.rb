class Riskkernel < Formula
  desc "Self-hosted reliability runtime for AI agents (budgets, approvals, crash-resume)"
  homepage "https://github.com/prashar32/riskkernel"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/prashar32/riskkernel/releases/download/v0.9.0/riskkernel_0.9.0_darwin_arm64.tar.gz"
      sha256 "b2b48318aa82983592050cab3c74b7842a57d0cf3be150c267d4eec2b764bb75"
    end
    on_intel do
      url "https://github.com/prashar32/riskkernel/releases/download/v0.9.0/riskkernel_0.9.0_darwin_amd64.tar.gz"
      sha256 "e65953536087f09eb8734eb2775d53e5fdceaa0fb8d5dd91a0d893f49eebe267"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prashar32/riskkernel/releases/download/v0.9.0/riskkernel_0.9.0_linux_arm64.tar.gz"
      sha256 "db5fc08561f1b8a35c0e41aac17137b0f397300bacdc3860e32aa771f191b77f"
    end
    on_intel do
      url "https://github.com/prashar32/riskkernel/releases/download/v0.9.0/riskkernel_0.9.0_linux_amd64.tar.gz"
      sha256 "2b3468618a4f8013d5b33a606256184fbf208a0e0d3e06282aeee0297af67eb2"
    end
  end

  def install
    bin.install "riskkernel"
  end

  test do
    assert_match "riskkernel", shell_output("#{bin}/riskkernel version")
  end
end

# automation-test marker (workflow will overwrite this with the canonical formula)
