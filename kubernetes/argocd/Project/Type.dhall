let k8s =
      https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/4ad58156b7fdbbb6da0543d8b314df899feca077/types.dhall sha256:e48e21b807dad217a6c3e631fcaf3e950062310bfb4a8bbcecc330eb7b2f60ed

in  { apiVersion :
        Text
    , kind : Text
    , metadata : k8s.ObjectMeta
    , spec :
          ../ProjectSpec/Type.dhall sha256:290e51c402f3e27ca91228375ce3462cf55b0e8bc395ec6813c3d6137eabdd29
        ? ../ProjectSpec/Type.dhall
    }
