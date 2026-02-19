cask "dictto" do
  version "1.3.0"
  sha256 "925c559b154c5f0ccbb9f37b53fc6bf633ff69e3c812bc0fb55690281271d9c8"

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
