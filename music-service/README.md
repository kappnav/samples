# Music Service Applications

## Installation

1. Clone the sample repository: `git clone https://github.com/kappnav/samples.git`
1. Install the [service-api](api-namespace)
1. Install the [web-ui](ui-namespace)
1. Create the music-service:  `kubectl create namespace music-service`
1. Change to music-service directory: `cd samples/music-service`
1. Deploy the music-service application: `kubectl create -f music-service-app-cr.yaml -n music-service`
