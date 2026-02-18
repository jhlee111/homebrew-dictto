cask "dictto" do
  version "1.1.0"
  sha256 "f683d274086f1cc329a9a8e664bbbcc6b067aa0ea220c68b42762047853135aa"

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
