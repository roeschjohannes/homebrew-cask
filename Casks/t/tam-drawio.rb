cask "tam-drawio" do
  version "0.1"
  sha256 :no_check

  url "https://github.com/roeschjohannes/tam-drawio.git#main"
  name "tam-drawio"
  desc "TAM plugin for draw.io"
  homepage "https://github.com/roeschjohannes/tam-drawio"
  
  depends_on cask: "drawio"

  installer script: {
    sudo: true,
    must_succeed: true,
    executable: "#{staged_path}/install.sh"
  }
  
  uninstall script: {
    sudo: true,
    must_succeed: true,
    executable: "#{staged_path}/uninstall.sh"
  }
end
