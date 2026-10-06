cask "spectrum-analyzer" do
  version "0.1.4"
  sha256 "91e24914e67ddb9016230d3710984961b44d7e02f81c0a09ddb2cb320fcedc2a"

  url "https://github.com/kyxap1/spectrum-analyzer/releases/download/v#{version}/SpectrumAnalyzer-#{version}.zip"
  name "Spectrum Analyzer"
  desc "Live spectrum analyzer overlaying system audio and a guitar interface input"
  homepage "https://github.com/kyxap1/spectrum-analyzer"

  depends_on arch: :arm64
  depends_on :macos

  app "Spectrum Analyzer.app"

  zap trash: [
    "~/Library/Application Support/pro.kyxap.SpectrumAnalyzer",
    "~/Library/Preferences/pro.kyxap.SpectrumAnalyzer.plist",
  ]
end
