# typed: false
# frozen_string_literal: true

class Devenv < Formula
  desc ""
  homepage ""
  version "0.3.0"

  # Only has dependencies
  url "file:///dev/null"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  depends_on "metafeather/tools/devenv@1.1.0-rc"

  def install
    (bin + "devenv.versions").write <<~EOS
      #!/bin/sh
      echo "#{version}"
    EOS
  end
end
