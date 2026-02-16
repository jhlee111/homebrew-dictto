cask "dictto" do
  version "1.0.0"
  sha256 "8d60d65bb727e7097acbd2f1da84dddd4cd0b02857d64b32f86546d3198c52dc"

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
