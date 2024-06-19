require("lspconfig").kotlin_language_server.setup {
    settings = {
        ["kotlin.compiler.jvm.target"] = "21",
        ["kotlin.completion.snippets.enabled"] = true,
        ["kotlin.externalSources.autoConvertToKotlin"] = true,
        ["kotlin.externalSources.useKlsScheme"] = true,
        ["kotlin.indexing.enabled"] = true,
        ["kotlin.languageServer.enabled"] = true,
        ["kotlin.snippetsEnabled"] = true
    }
}
