class Swiftlint < Formula
  desc "A tool to enforce Swift style and conventions."
  homepage "https://github.com/realm/SwiftLint"
  url "https://github.com/realm/SwiftLint/archive/0.55.1.tar.gz"
  sha256 "3c59f9e4a7201d6841a0c78f2dc7bb62a5693fa93154a067ff0c3e15dc35e84f" # 해당 버전의 SHA256 해시값

  depends_on "swift"

  def install
    system "make", "install", "DESTDIR=#{prefix}"
  end

  test do
    system "#{bin}/swiftlint", "--version"
  end
end

