resource "kubernetes_deployment" "my_app" {
  metadata {
    name = "my-app-deployment"
  }

  spec {
    replicas = 3

    selector {
      match_labels = {
        app = "my-app"
      }
    }

    template {
      metadata {
        labels = {
          app = "my-app"
        }
      }

      spec {
        containers {
          name  = "my-app-container"
          image = "my-docker-image:tag"
          ports {
            container_port = 80
          }
        }
      }
    }
  }
}
