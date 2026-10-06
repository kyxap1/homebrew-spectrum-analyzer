cask "spectrum-analyzer" do
  version "0.1.7"
  sha256 "5cba1f60bbe20a464b36cb059af8aa894f679325ee231e6e9ad46783babfa3c9"

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
