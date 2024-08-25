#include <WiFi.h>


const char* ssid = "realme GT Neo5 SE"; // Replace with your Wi-Fi SSID
const char* password = "11111111"; // Replace with your Wi-Fi password

WiFiServer server(80); // Create a web server on port 80

void setup() {
  Serial.begin(9600);
  pinMode(13,OUTPUT);
  // Connect to Wi-Fi
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("Connected to Wi-Fi");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());

  // Start the web server
  server.begin();
}

void loop() {
  WiFiClient client = server.available();
  if (!client) {
    return;
  }

  // Read data from the client
  String request = client.readStringUntil('\r');

  // Process the request and send a response
  if (request.indexOf("/blue") != -1) {
    client.print("HTTP/1.1 200 OK\r\n");
    client.print("Content-Type: text/plain\r\n\r\n");
    client.print("Hello from ESP32!\r\n");
    digitalWrite(13,HIGH);
  }

  client.stop();
}