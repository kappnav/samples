# UI Namespace Applications

## Installation

1. Create the ui-namespace:  `kubectl create namespace ui-namespace`
1. Change to ui-namespace directory:  `cd samples/music-service/ui-namespace`
1. Deploy the web-ui application: `kubectl create -f web-ui.yaml -n ui-namespace`
