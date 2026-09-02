cask "qivreno" do
  version "1.7.0"
  sha256 "c3400c9dcf553d78e0408db59bc33d25f547a9db3360c1cb4438532ae3a6026e"

  url "https://get.qivreno.ai/Qivreno_#{version}_aarch64.dmg"
  name "Qivreno"
  desc "Local-first desktop app for running a team of AI agents"
  homepage "https://qivreno.ai/"

  livecheck do
    url "https://qivreno.ai/download"
    regex(/Version\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "Qivreno.app"

  zap trash: [
    "~/Library/Application Support/com.272solutions.qivreno",
    "~/Library/Caches/com.272solutions.qivreno",
    "~/Library/Preferences/com.272solutions.qivreno.plist",
    "~/Library/Saved Application State/com.272solutions.qivreno.savedState",
  ]
end
