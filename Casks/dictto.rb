cask "dictto" do
  version "1.3.1"
  sha256 "1eff004d0890f6a29417702d513cbc354bfccbcba95a00e759ed659bd1940ced"

  url "https://github.com/jhlee111/dictto/releases/download/v#{version}/Dictto-#{version}.dmg"
  name "Dictto"
  desc "Local-first voice dictation and file transcription using Whisper"
  homepage "https://github.com/jhlee111/dictto"

  livecheck do
    url :url
    strategy :github_latest
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Dictto.app"

  zap trash: [
    "~/Library/Application Support/Dictto",
    "~/Library/Preferences/com.johndev.dictto.plist",
  ]
end
