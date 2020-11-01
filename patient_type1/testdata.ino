#include<dht.h>
#include <ESP8266WiFi.h> // library
#include <PulseSensorPlayground.h> 
const int PulseWire = A0; 
// wifi and hosting details  // wifi credientials
const char* ssid = "Sudhan";
const char* password = "sudhan20";
const char* host =  "xyz.000webhostapp.com";  // hostname
PulseSensorPlayground pulseSensor;  // Creates an instance of the PulseSensorPlayground object called "pulseSensor"
WiFiClient client;
void setup() {
  Serial.begin(9600);
   pulseSensor.analogInput(PulseWire); 
   pulseSensor.begin();
  }

void loop() {
int BPM = pulseSensor.getBeatsPerMinute();
    dht DHT;
  DHT.read11(0);      //define the humdidty sensor d0
    float hum = DHT.humidity;
    float temp = DHT.temperature;
if (pulseSensor.sawStartOfBeat()) { 
    
               Serial.println("BPM: "+ String(BPM));
               Serial.println("TEMPERATURE" + String(temp));
            //   Serial.println("humidity" + String(hum));
                // update reading to database table
              Serial.print("connecting to ");
              Serial.println(host);
            
              WiFiClient client;
              const int httpPort = 80;  //general and 000webhostapp.com port
              if (!client.connect(host, httpPort)) {
                Serial.println("connection failed");
                return;
              }
              
              String url = "/testing.php?bpm=" + String(BPM)+ "&temp=" + String(temp);  // my php page
              Serial.print("Requesting URL: ");
              Serial.println(url);
              
              client.print(String("GET ") + url + " HTTP/1.1\r\n" +
                           "Host: " + host + "\r\n" + 
                           "Connection: close\r\n\r\n");
              delay(500);
              
              while(client.available()){
                String line = client.readStringUntil('\r');
                Serial.print(line);
              }
              
              Serial.println();
              Serial.println("closing connection");  // if your server is slow then, delay and close the connection .
}
}
