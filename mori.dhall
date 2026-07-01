let Schema =
      https://raw.githubusercontent.com/shinzui/mori-schema/06588f0a31e97784398f1260bc88321684219908/package.dhall
        sha256:4f9f90bd930eb8d27e8bce70e504d7d366bc302d58a139c9b6874b8c51c952e4

in  Schema.Project::{
    , project = Schema.ProjectIdentity::{
      , name = "servant-openapi-hs"
      , namespace = "shinzui"
      , type = Schema.PackageType.Library
      , language = Schema.Language.Haskell
      , lifecycle = Schema.Lifecycle.Active
      , description = Some
          "Generate an OpenAPI 3.1 specification for a Servant API and test that handlers conform to it (fork of biocad/servant-openapi3, retargeted at OpenAPI 3.1 via openapi-hs)"
      , domains = [ "openapi", "web", "servant" ]
      , owners = [ "shinzui" ]
      }
    , repos =
      [ Schema.Repo::{
        , name = "servant-openapi-hs"
        , github = Some "shinzui/servant-openapi-hs"
        }
      ]
    , packages =
      [ Schema.Package::{
        , name = "servant-openapi-hs"
        , type = Schema.PackageType.Library
        , language = Schema.Language.Haskell
        , path = Some "./"
        , description = Some
            "OpenAPI 3.1 spec generation and conformance testing for Servant APIs"
        }
      ]
    , dependencies = [ "shinzui/openapi-hs", "haskell-servant/servant" ]
    }
