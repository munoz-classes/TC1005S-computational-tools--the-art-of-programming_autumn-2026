// =============================================================================
// CÓDIGO PARA ARDUINO / WOKWI - RECEPTOR DEL SCRIPT DE BASH
// Conexiones en Wokwi o Arduino físico:
// - Servomotor (Paracaídas / Pata de Araña): Pin 9
// - LED Verde (Éxito / Despegue):            Pin 12
// - LED Rojo  (Alerta / Aborto):             Pin 13
// =============================================================================

#include <Servo.h>

Servo motorMision;
const int PIN_SERVO = 9;
const int PIN_LED_VERDE = 12;
const int PIN_LED_ROJO = 13;

void setup()
{
    Serial.begin(9600);
    motorMision.attach(PIN_SERVO);
    pinMode(PIN_LED_VERDE, OUTPUT);
    pinMode(PIN_LED_ROJO, OUTPUT);

    // Estado inicial: Motor cerrado (0 grados)
    motorMision.write(0);
    Serial.println("====================================================");
    Serial.println("🤖 HARDWARE LISTO. Pega aqui la salida de tu Bash:");
    Serial.println("   Ejemplos: CMD_LAUNCH:180  |  CMD_SERVO_ACTION:90  |  CMD_ABORT:0");
    Serial.println("====================================================");
}

void loop()
{
    // Si recibe una orden desde la Terminal (USB) o el Monitor Serial de Wokwi:
    if (Serial.available() > 0)
    {
        String orden = Serial.readStringUntil('\n');
        orden.trim();

        if (orden.startsWith("CMD_LAUNCH"))
        {
            digitalWrite(PIN_LED_VERDE, HIGH);
            digitalWrite(PIN_LED_ROJO, LOW);
            motorMision.write(180); // Abre compuerta / lanza cohete al máximo
            Serial.println("🚀 [HARDWARE] LED Verde ENCENDIDO | Servomotor a 180 grados.");
        }
        else if (orden.startsWith("CMD_SERVO_ACTION"))
        {
            digitalWrite(PIN_LED_VERDE, HIGH);
            digitalWrite(PIN_LED_ROJO, LOW);
            // Secuencia de paracaídas o caminata de araña
            Serial.println("🕷️/🪂 [HARDWARE] Ejecutando secuencia de servomotor (90 grados)...");
            motorMision.write(90);
            delay(600);
            motorMision.write(45);
            delay(600);
            motorMision.write(90);
        }
        else if (orden.startsWith("CMD_ABORT"))
        {
            digitalWrite(PIN_LED_VERDE, LOW);
            digitalWrite(PIN_LED_ROJO, HIGH);
            motorMision.write(0); // Regresa el motor a posición segura
            Serial.println("🛑 [HARDWARE] ALERTA ROJA: Mision abortada. Motor bloqueado en 0°.");
        }
    }
}