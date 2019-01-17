#!/bin/sh

curl \
--request POST \
--data '{                   \
   "receiver":"telegram",   \
   "status":"firing",       \
   "alerts":[               \
      {                     \
         "status":"firing", \
         "labels":{         \
            "alertname":"HTTPD Down",                               \
            "severity":"critical"                                   \
         },                                                         \
         "annotations":{                                            \
            "message":"HTTPD service is down"                       \
         },                                                         \
         "startsAt":"2018-11-04T22:43:58.283995108+01:00",          \
         "endsAt":"2018-11-04T22:46:58.283995108+01:00",            \
         "generatorURL":"http://localhost:9090/graph?g0.expr=vector%28666%29\u0026g0.tab=1"             \
      }                                                             \
   ],                                                   \
   "groupLabels":{                                      \
      "alertname":"HTTPD Down"                          \
   },                                                   \
   "commonLabels":{                                     \
      "alertname":"HTTPD Down",                         \
      "severity":"critical"                             \
   },                                                   \
   "commonAnnotations":{                                \
      "message":"Something is on fire"                  \
   },                                                   \
   "externalURL":"http://localhost:9093",               \
   "version":"4",                                       \
   "groupKey":"{}:{alertname=\"HTTPD Down\"}"           \
}' \
localhost:8080
