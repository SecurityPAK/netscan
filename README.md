# network scanner <img src="./assets/scan.png" alt="Scan Image" width="120" align="right" style="margin-left: 20px;"/>

<p align="center">
  <strong>Click your operating system to scan your network</strong>
</p>

<p align="center">
  <a href="#windows-install-instructions">
    <img src="./assets/windows.png" alt="Windows Logo" width="120" style="margin: 0 60px;"/>
  </a>
  <a href="#macos-install-instructions">
    <img src="./assets/macos.png" alt="macOS Logo" width="120" style="margin: 0 60px;"/>
  </a>
  <a href="#linux-install-instructions">
    <img src="./assets/linux.png" alt="Linux Logo" width="120" style="margin: 0 60px;"/>
  </a>
</p>

<br>

<p style="line-height: 1.5;">✓ Identifies all active devices on your network</p>
<p style="line-height: 1.5;">✓ Displays IP addresses of connected devices</p>
<p style="line-height: 1.5;">✓ Easy-to-use script for network management</p>
<p style="line-height: 1.5;">✓ Supports Windows, macOS, and Linux</p>

<br>

<h2 id="windows-install-instructions">Windows</h2>
<img align="right" width="120" src="./assets/windows.png">
<p>This requires you to have Nmap installed on your system.</p>
<ol style="line-height: 1.5;">
  <li><strong>Open Command Prompt</strong>
    <ul>
      <li>Press <code>Windows + R</code></li>
      <li>Type <code>cmd</code></li>
      <li>Press <code>Enter</code></li>
    </ul>
  </li>
  <li><strong>Install Nmap</strong>
    <ul>
      <li>Copy and paste the following command into Command Prompt to download and install Nmap:</li>
      <pre><code>choco install nmap</code></pre>
      <li>If you don't have Chocolatey installed, you can install it by running the following command in Command Prompt as Administrator:</li>
      <pre><code>Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))</code></pre>
    </ul>
  </li>
  <li><strong>Download Network Scanner Script</strong>
    <ul>
      <li>Copy and paste the following command into Command Prompt to download the script:</li>
      <pre><code>curl -o scan-windows.ps1 https://raw.githubusercontent.com/SecurityPAK/netscan/main/scan-windows.ps1</code></pre>
    </ul>
  </li>
  <li><strong>Run Network Scanner</strong>
    <ul>
      <li>Copy and paste the following command into Command Prompt to run the script:</li>
      <pre><code>powershell -ExecutionPolicy Bypass -File .\scan-windows.ps1</code></pre>
    </ul>
  </li>
</ol>
<p>Your network scan results will be displayed in the terminal.</p>

<br>

<h2 id="macos-install-instructions">macOS</h2>
<img align="right" width="120" src="./assets/macos.png">
<p>This requires you to have Homebrew and Nmap installed on your system.</p>
<ol style="line-height: 1.5;">
  <li><strong>Open Terminal</strong>
    <ul>
      <li>Press <code>Command + Space</code></li>
      <li>Type <code>Terminal</code></li>
      <li>Press <code>Enter</code></li>
    </ul>
  </li>
  <li><strong>Install Homebrew (if not already installed)</strong>
    <ul>
      <li>Copy and paste the following command into Terminal to install Homebrew:</li>
      <pre><code>/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"</code></pre>
    </ul>
  </li>
  <li><strong>Install Nmap</strong>
    <ul>
      <li>Copy and paste the following command into Terminal to install Nmap:</li>
      <pre><code>brew install nmap</code></pre>
    </ul>
  </li>
  <li><strong>Download Network Scanner Script</strong>
    <ul>
      <li>Copy and paste the following command into Terminal to download the script:</li>
      <pre><code>curl -o scan-macos.sh https://raw.githubusercontent.com/SecurityPAK/netscan/main/scan-macos.sh</code></pre>
    </ul>
  </li>
  <li><strong>Make Script Executable</strong>
    <ul>
      <li>Copy and paste the following command into Terminal to make the script executable:</li>
      <pre><code>chmod +x scan-macos.sh</code></pre>
    </ul>
  </li>
  <li><strong>Run Network Scanner</strong>
    <ul>
      <li>Copy and paste the following command into Terminal to run the script:</li>
      <pre><code>./scan-macos.sh</code></pre>
    </ul>
  </li>
</ol>
<p>Your network scan results will be displayed in the terminal.</p>

<br>

<h2 id="linux-install-instructions">Linux</h2>
<img align="right" width="120" src="./assets/linux.png">
<p>This requires you to have Nmap installed on your system.</p>
<ol style="line-height: 1.5;">
  <li><strong>Open Terminal</strong>
    <ul>
      <li>Press <code>Ctrl + Alt + T</code></li>
    </ul>
  </li>
  <li><strong>Install Nmap</strong>
    <ul>
      <li>Copy and paste the following command into Terminal to install Nmap:</li>
      <pre><code>sudo apt-get install nmap  # For Debian/Ubuntu-based systems
sudo yum install nmap      # For Red Hat/CentOS-based systems</code></pre>
    </ul>
  </li>
  <li><strong>Download Network Scanner Script</strong>
    <ul>
      <li>Copy and paste the following command into Terminal to download the script:</li>
      <pre><code>curl -o scan-linux.sh https://raw.githubusercontent.com/SecurityPAK/netscan/main/scan-linux.sh</code></pre>
    </ul>
  </li>
  <li><strong>Make Script Executable</strong>
    <ul>
      <li>Copy and paste the following command into Terminal to make the script executable:</li>
      <pre><code>chmod +x scan-linux.sh</code></pre>
    </ul>
  </li>
  <li><strong>Run Network Scanner</strong>
    <ul>
      <li>Copy and paste the following command into Terminal to run the script:</li>
      <pre><code>./scan-linux.sh</code></pre>
    </ul>
  </li>
</ol>
<p>Your network scan results will be displayed in the terminal.</p>

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
