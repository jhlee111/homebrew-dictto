cask "dictto" do
  version "1.2.0"
  sha256 "111b353621af215d42329b212cfb369c7c2ea141d17341260fd3cad9c639a2f7"

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
