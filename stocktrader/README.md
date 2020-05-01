# Stock Trader Sample Application

## Install "Giddyup version" of Stock Trader Application 

1. Clone the sample repository with the following command: `git clone https://github.com/kappnav/samples.git`
1. Create the `stock-trader` sample namespace with the following command: 

   ```
   kubectl create namespace stock-trader
   ```

   ```
   # kubectl create namespace stocktrader
   namespace/stocktrader created
   ```
1. Deploy the **stock-trader** sample application with the following command: `kubectl create -f samples/stocktrader -n stock-trader`

   ```
   # kubectl create -f samples/stocktrader -n stock-trader
   application.app.k8s.io/stock-trader created
   deployment.extensions/loyalty-level created
   service/loyalty-level-service created
   deployment.extensions/notification-twitter created
   service/notification-service created
   deployment.extensions/portfolio created
   service/portfolio-service created
   deployment.extensions/stock-quote created
   service/stock-quote-service created
   deployment.extensions/trader created
   service/trader-service created
   ```
1. Ensure that the **stock-trader** application starts.
   * You can watch the application be deployed in the kAppNav UI. The **stock-trader** application appears and the status changes from **Unknown**, to **Problem**, then to **Normal**.
   * You can also check the installation progress with the following command to see whether all the pods are running:  `kubectl get pods -n stocktrader`

   ```
   # kubectl get pods -n stocktrader
   NAME                                  READY     STATUS    RESTARTS   AGE
   loyalty-level-5fd5c9b855-rfxss        1/1       Running   0          54s
   notification-twitter-f568cc54-d5xck   1/1       Running   0          54s
   portfolio-8fb7cf89c-zjw58             1/1       Running   0          54s
   stock-quote-5c88f57659-tlcl8          1/1       Running   0          53s
   trader-59c9dcb74-2cv8b                1/1       Running   0          53s
   ```

## Loyalty-level Deployment 

The Loyalty-level deployment runs an OpenLiberty application server.  This application is configured to expose micro-profile metrics via
the Prometheus /metrics endpoint.  

Prometheus requires a ServiceMonitor resource in order to gather metrics.  The ServiceMonitor resource specifies a namespace selector
that is hard-coded to "stock-trader", which is the recommended namespace to use for this sample. 

Therefore, if you install this sample to another namespace and want to view metrics collected by Prometheus for the Loyalty-level Deployment, you must update the namespaceSelector in loyalty_deployment.yaml file. 