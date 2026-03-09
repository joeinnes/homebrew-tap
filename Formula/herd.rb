class Herd < Formula
  desc "Menubar companion for cow — browse and manage pastures from the menu bar"
  homepage "https://github.com/joeinnes/cow"
  url "https://github.com/joeinnes/cow/archive/refs/tags/v0.1.9.tar.gz"
  sha256 "6dad1274d77627cf74333d2fd3fbb1050a251a0ae5dc8d1b618aa6c654953074"
  version "0.1.9"
  license "MIT"

  depends_on :macos => :ventura

  def install
    # --disable-sandbox prevents SPM from using sandbox-exec internally,
    # which conflicts with Homebrew's own sandbox environment.
    system "swift", "build", "--package-path", "herd", "-c", "release",
           "--disable-sandbox"

    app_contents = buildpath/"Herd.app/Contents"
    (app_contents/"MacOS").mkpath
    (app_contents/"Resources").mkpath

    cp "herd/.build/release/Herd", app_contents/"MacOS/Herd"
    cp "herd/Assets/AppIcon.icns", app_contents/"Resources/AppIcon.icns"

    (app_contents/"Info.plist").write <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
      <dict>
        <key>CFBundleIdentifier</key>
        <string>com.joeinnes.herd</string>
        <key>CFBundleName</key>
        <string>Herd</string>
        <key>CFBundleDisplayName</key>
        <string>Herd</string>
        <key>CFBundleExecutable</key>
        <string>Herd</string>
        <key>CFBundleIconFile</key>
        <string>AppIcon</string>
        <key>CFBundleVersion</key>
        <string>#{version}</string>
        <key>CFBundleShortVersionString</key>
        <string>#{version}</string>
        <key>CFBundlePackageType</key>
        <string>APPL</string>
        <key>LSMinimumSystemVersion</key>
        <string>13.0</string>
        <key>LSUIElement</key>
        <true/>
        <key>NSHighResolutionCapable</key>
        <true/>
        <key>NSPrincipalClass</key>
        <string>NSApplication</string>
      </dict>
      </plist>
    EOS

    prefix.install buildpath/"Herd.app"
  end

  def caveats
    <<~EOS
      Herd is unsigned. To use it:

        1. Copy it to your Applications folder:
             cp -r #{prefix}/Herd.app /Applications/

        2. On first launch, right-click Herd.app and choose Open,
           then click Open in the Gatekeeper prompt.

      Herd requires the cow CLI to be installed:
        brew install joeinnes/tap/cow
    EOS
  end

  test do
    assert_predicate prefix/"Herd.app", :directory?
    assert_predicate prefix/"Herd.app/Contents/MacOS/Herd", :executable?
  end
end
