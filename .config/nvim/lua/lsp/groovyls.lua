local servers = require 'nvim-lsp-installer.servers'
local server = require 'nvim-lsp-installer.server'
local path = require 'nvim-lsp-installer.path'
local installers = require 'nvim-lsp-installer.installers'
local std = require "nvim-lsp-installer.installers.std"

local server_name = 'groovyls'

local root_dir = server.get_server_root_path(server_name)


local installer = installers.pipe {

    std.git_clone('https://github.com/GroovyLanguageServer/groovy-language-server'),
    std.gradlew('build -Dorg.gradle.java.home=/usr/lib/jvm/java-8-openjdk/')

}

local groovy_server = server.Server:new {
    name = server_name,
    root_dir = root_dir,
    installer = installer,
    default_options = {
        cmd = { 'java', '-jar', path.concat { root_dir, "/builds/libs/groovy-language-server-all.jar" } },
    },
}

servers.register(groovy_server)
