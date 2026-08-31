//
//  Sensors.swift
//  smc_test
//
//  Created by Eric Hemmeter on 4/9/24.
//

// Data from https://github.com/exelban/stats/blob/722f0fe190baf36983ff2cfb93ab6d333b62e44c/Modules/Sensors/values.swift

import Foundation

public enum SensorType: String, Codable {
    case temperature = "Temperature"
    case voltage = "Voltage"
    case current = "Current"
    case power = "Power"
    case energy = "Energy"
    case fan = "Fans"
}

public struct Sensor: Codable {
    public var key: String
    public var name: String
    public var type: SensorType
}



internal let SensorsList: [Sensor] = [
    // Temperature
    Sensor(key: "TA%P", name: "Ambient %", type: .temperature),
    Sensor(key: "Th%H", name: "Heatpipe %", type: .temperature),
    Sensor(key: "TZ%C", name: "Thermal zone %", type: .temperature),
    
    Sensor(key: "TC0D", name: "CPU diode", type: .temperature),
    Sensor(key: "TC0E", name: "CPU diode virtual", type: .temperature),
    Sensor(key: "TC0F", name: "CPU diode filtered", type: .temperature),
    Sensor(key: "TC0H", name: "CPU heatsink", type: .temperature),
    Sensor(key: "TC0P", name: "CPU proximity", type: .temperature),
    Sensor(key: "TCAD", name: "CPU package", type: .temperature),
    
    Sensor(key: "TC%c", name: "CPU core %", type: .temperature),
    Sensor(key: "TC%C", name: "CPU Core %", type: .temperature),
    
    Sensor(key: "TCGC", name: "GPU Intel Graphics", type: .temperature),
    Sensor(key: "TG0D", name: "GPU diode", type: .temperature),
    Sensor(key: "TGDD", name: "GPU AMD Radeon", type: .temperature),
    Sensor(key: "TG0H", name: "GPU heatsink", type: .temperature),
    Sensor(key: "TG0P", name: "GPU proximity", type: .temperature),
    
    Sensor(key: "Tm0P", name: "Mainboard", type: .temperature),
    Sensor(key: "Tp0P", name: "Powerboard", type: .temperature),
    Sensor(key: "TB1T", name: "Battery", type: .temperature),
    Sensor(key: "TW0P", name: "Airport", type: .temperature),
    Sensor(key: "TL0P", name: "Display", type: .temperature),
    Sensor(key: "TI%P", name: "Thunderbolt %", type: .temperature),
    Sensor(key: "TH%A", name: "Disk % (A)", type: .temperature),
    Sensor(key: "TH%B", name: "Disk % (B)", type: .temperature),
    Sensor(key: "TH%C", name: "Disk % (C)", type: .temperature),
    
    Sensor(key: "TTLD", name: "Thunderbolt left", type: .temperature),
    Sensor(key: "TTRD", name: "Thunderbolt right", type: .temperature),
    
    Sensor(key: "TN0D", name: "Northbridge diode", type: .temperature),
    Sensor(key: "TN0H", name: "Northbridge heatsink", type: .temperature),
    Sensor(key: "TN0P", name: "Northbridge proximity", type: .temperature),
    
    // Apple Silicon
    Sensor(key: "Tp09", name: "CPU efficiency core 1", type: .temperature),
    Sensor(key: "Tp0T", name: "CPU efficiency core 2", type: .temperature),
    Sensor(key: "Tp01", name: "CPU performance core 1", type: .temperature),
    Sensor(key: "Tp05", name: "CPU performance core 2", type: .temperature),
    Sensor(key: "Tp0D", name: "CPU performance core 3", type: .temperature),
    Sensor(key: "Tp0H", name: "CPU performance core 4", type: .temperature),
    Sensor(key: "Tp0L", name: "CPU performance core 5", type: .temperature),
    Sensor(key: "Tp0P", name: "CPU performance core 6", type: .temperature),
    Sensor(key: "Tp0X", name: "CPU performance core 7", type: .temperature),
    Sensor(key: "Tp0b", name: "CPU performance core 8", type: .temperature),
    
    Sensor(key: "Tg05", name: "GPU 1", type: .temperature),
    Sensor(key: "Tg0D", name: "GPU 2", type: .temperature),
    Sensor(key: "Tg0L", name: "GPU 3", type: .temperature),
    Sensor(key: "Tg0T", name: "GPU 4", type: .temperature),
    
    Sensor(key: "Tm02", name: "Memory 1", type: .temperature),
    Sensor(key: "Tm06", name: "Memory 2", type: .temperature),
    Sensor(key: "Tm08", name: "Memory 3", type: .temperature),
    Sensor(key: "Tm09", name: "Memory 4", type: .temperature),
    
    // M2
    Sensor(key: "Tp1h", name: "CPU efficiency core 1", type: .temperature),
    Sensor(key: "Tp1t", name: "CPU efficiency core 2", type: .temperature),
    Sensor(key: "Tp1p", name: "CPU efficiency core 3", type: .temperature),
    Sensor(key: "Tp1l", name: "CPU efficiency core 4", type: .temperature),
    
    Sensor(key: "Tp01", name: "CPU performance core 1", type: .temperature),
    Sensor(key: "Tp05", name: "CPU performance core 2", type: .temperature),
    Sensor(key: "Tp09", name: "CPU performance core 3", type: .temperature),
    Sensor(key: "Tp0D", name: "CPU performance core 4", type: .temperature),
    Sensor(key: "Tp0X", name: "CPU performance core 5", type: .temperature),
    Sensor(key: "Tp0b", name: "CPU performance core 6", type: .temperature),
    Sensor(key: "Tp0f", name: "CPU performance core 7", type: .temperature),
    Sensor(key: "Tp0j", name: "CPU performance core 8", type: .temperature),
    
    Sensor(key: "Tg0f", name: "GPU 1", type: .temperature),
    Sensor(key: "Tg0j", name: "GPU 2", type: .temperature),
    
    // M3
    Sensor(key: "Te05", name: "CPU efficiency core 1", type: .temperature),
    Sensor(key: "Te0L", name: "CPU efficiency core 2", type: .temperature),
    Sensor(key: "Te0P", name: "CPU efficiency core 3", type: .temperature),
    Sensor(key: "Te0S", name: "CPU efficiency core 4", type: .temperature),
    
    Sensor(key: "Tf04", name: "CPU performance core 1", type: .temperature),
    Sensor(key: "Tf09", name: "CPU performance core 2", type: .temperature),
    Sensor(key: "Tf0A", name: "CPU performance core 3", type: .temperature),
    Sensor(key: "Tf0B", name: "CPU performance core 4", type: .temperature),
    Sensor(key: "Tf0D", name: "CPU performance core 5", type: .temperature),
    Sensor(key: "Tf0E", name: "CPU performance core 6", type: .temperature),
    Sensor(key: "Tf44", name: "CPU performance core 7", type: .temperature),
    Sensor(key: "Tf49", name: "CPU performance core 8", type: .temperature),
    Sensor(key: "Tf4A", name: "CPU performance core 9", type: .temperature),
    Sensor(key: "Tf4B", name: "CPU performance core 10", type: .temperature),
    Sensor(key: "Tf4D", name: "CPU performance core 11", type: .temperature),
    Sensor(key: "Tf4E", name: "CPU performance core 12", type: .temperature),
    
    Sensor(key: "Tf14", name: "GPU 1", type: .temperature),
    Sensor(key: "Tf18", name: "GPU 2", type: .temperature),
    Sensor(key: "Tf19", name: "GPU 3", type: .temperature),
    Sensor(key: "Tf1A", name: "GPU 4", type: .temperature),
    Sensor(key: "Tf24", name: "GPU 5", type: .temperature),
    Sensor(key: "Tf28", name: "GPU 6", type: .temperature),
    Sensor(key: "Tf29", name: "GPU 7", type: .temperature),
    Sensor(key: "Tf2A", name: "GPU 8", type: .temperature),
    
    // M4
    Sensor(key: "Te05", name: "CPU efficiency core 1", type: .temperature),
    Sensor(key: "Te0S", name: "CPU efficiency core 2", type: .temperature),
    Sensor(key: "Te09", name: "CPU efficiency core 3", type: .temperature),
    Sensor(key: "Te0H", name: "CPU efficiency core 4", type: .temperature),
    
    Sensor(key: "Tp01", name: "CPU performance core 1", type: .temperature),
    Sensor(key: "Tp05", name: "CPU performance core 2", type: .temperature),
    Sensor(key: "Tp09", name: "CPU performance core 3", type: .temperature),
    Sensor(key: "Tp0D", name: "CPU performance core 4", type: .temperature),
    Sensor(key: "Tp0V", name: "CPU performance core 5", type: .temperature),
    Sensor(key: "Tp0Y", name: "CPU performance core 6", type: .temperature),
    Sensor(key: "Tp0b", name: "CPU performance core 7", type: .temperature),
    Sensor(key: "Tp0e", name: "CPU performance core 8", type: .temperature),
    
    Sensor(key: "Tg0G", name: "GPU 1", type: .temperature),
    Sensor(key: "Tg0H", name: "GPU 2", type: .temperature),
    Sensor(key: "Tg1U", name: "GPU 1", type: .temperature),
    Sensor(key: "Tg1k", name: "GPU 2", type: .temperature),
    
    Sensor(key: "Tg0K", name: "GPU 3", type: .temperature),
    Sensor(key: "Tg0L", name: "GPU 4", type: .temperature),
    Sensor(key: "Tg0d", name: "GPU 5", type: .temperature),
    Sensor(key: "Tg0e", name: "GPU 6", type: .temperature),
    Sensor(key: "Tg0j", name: "GPU 7", type: .temperature),
    Sensor(key: "Tg0k", name: "GPU 8", type: .temperature),
    
    Sensor(key: "Tm0p", name: "Memory Proximity 1", type: .temperature),
    Sensor(key: "Tm1p", name: "Memory Proximity 2", type: .temperature),
    Sensor(key: "Tm2p", name: "Memory Proximity 3", type: .temperature),
    
    // M5
    Sensor(key: "Tp00", name: "CPU super core 1", type: .temperature),
    Sensor(key: "Tp04", name: "CPU super core 2", type: .temperature),
    Sensor(key: "Tp08", name: "CPU super core 3", type: .temperature),
    Sensor(key: "Tp0C", name: "CPU super core 4", type: .temperature),
    Sensor(key: "Tp0G", name: "CPU super core 5", type: .temperature),
    Sensor(key: "Tp0K", name: "CPU super core 6", type: .temperature),
    
    Sensor(key: "Tp0O", name: "CPU performance core 1", type: .temperature),
    Sensor(key: "Tp0R", name: "CPU performance core 2", type: .temperature),
    Sensor(key: "Tp0U", name: "CPU performance core 3", type: .temperature),
    Sensor(key: "Tp0X", name: "CPU performance core 4", type: .temperature),
    Sensor(key: "Tp0a", name: "CPU performance core 5", type: .temperature),
    Sensor(key: "Tp0d", name: "CPU performance core 6", type: .temperature),
    Sensor(key: "Tp0g", name: "CPU performance core 7", type: .temperature),
    Sensor(key: "Tp0j", name: "CPU performance core 8", type: .temperature),
    Sensor(key: "Tp0m", name: "CPU performance core 9", type: .temperature),
    Sensor(key: "Tp0p", name: "CPU performance core 10", type: .temperature),
    Sensor(key: "Tp0u", name: "CPU performance core 11", type: .temperature),
    Sensor(key: "Tp0y", name: "CPU performance core 12", type: .temperature),
    
    Sensor(key: "Tg0U", name: "GPU 1", type: .temperature),
    Sensor(key: "Tg0X", name: "GPU 2", type: .temperature),
    Sensor(key: "Tg0d", name: "GPU 3", type: .temperature),
    Sensor(key: "Tg0g", name: "GPU 4", type: .temperature),
    Sensor(key: "Tg0j", name: "GPU 5", type: .temperature),
    Sensor(key: "Tg1Y", name: "GPU 6", type: .temperature),
    Sensor(key: "Tg1c", name: "GPU 7", type: .temperature),
    Sensor(key: "Tg1g", name: "GPU 8", type: .temperature),
    
    // Apple Silicon
    Sensor(key: "TaLP", name: "Airflow left", type: .temperature),
    Sensor(key: "TaRF", name: "Airflow right", type: .temperature),
    
    Sensor(key: "TH0x", name: "NAND", type: .temperature),
    Sensor(key: "TB1T", name: "Battery 1", type: .temperature),
    Sensor(key: "TB2T", name: "Battery 2", type: .temperature),
    Sensor(key: "TW0P", name: "Airport", type: .temperature),
    
    // Voltage
    Sensor(key: "VCAC", name: "CPU IA", type: .voltage),
    Sensor(key: "VCSC", name: "CPU System Agent", type: .voltage),
    Sensor(key: "VC%C", name: "CPU Core %", type: .voltage),
    
    Sensor(key: "VCTC", name: "GPU Intel Graphics", type: .voltage),
    Sensor(key: "VG0C", name: "GPU", type: .voltage),
    
    Sensor(key: "VM0R", name: "Memory", type: .voltage),
    Sensor(key: "Vb0R", name: "CMOS", type: .voltage),
    
    Sensor(key: "VD0R", name: "DC In", type: .voltage),
    Sensor(key: "VP0R", name: "12V rail", type: .voltage),
    Sensor(key: "Vp0C", name: "12V vcc", type: .voltage),
    Sensor(key: "VV2S", name: "3V", type: .voltage),
    Sensor(key: "VR3R", name: "3.3V", type: .voltage),
    Sensor(key: "VV1S", name: "5V", type: .voltage),
    Sensor(key: "VV9S", name: "12V", type: .voltage),
    Sensor(key: "VeES", name: "PCI 12V", type: .voltage),
    
    // Current
    Sensor(key: "IC0R", name: "CPU High side", type: .current),
    Sensor(key: "IG0R", name: "GPU High side", type: .current),
    Sensor(key: "ID0R", name: "DC In", type: .current),
    Sensor(key: "IBAC", name: "Battery", type: .current),
    Sensor(key: "IU1R", name: "Thunderbolt Left", type: .current),
    Sensor(key: "IU2R", name: "Thunderbolt Right", type: .current),
    
    // Power
    Sensor(key: "PC0C", name: "CPU Core", type: .power),
    Sensor(key: "PCAM", name: "CPU Core (IMON)", type: .power),
    Sensor(key: "PCPC", name: "CPU Package", type: .power),
    Sensor(key: "PCTR", name: "CPU Total", type: .power),
    Sensor(key: "PCPT", name: "CPU Package total", type: .power),
    Sensor(key: "PCPR", name: "CPU Package total (SMC)", type: .power),
    Sensor(key: "PC0R", name: "CPU Computing high side", type: .power),
    Sensor(key: "PC0G", name: "CPU GFX", type: .power),
    Sensor(key: "PCEC", name: "CPU VccEDRAM", type: .power),
    
    Sensor(key: "PCPG", name: "GPU Intel Graphics", type: .power),
    Sensor(key: "PG0R", name: "GPU", type: .power),
    Sensor(key: "PG0R", name: "GPU 1", type: .power),
    Sensor(key: "PG1R", name: "GPU 2", type: .power),
    Sensor(key: "PCGC", name: "Intel GPU", type: .power),
    Sensor(key: "PCGM", name: "Intel GPU (IMON)", type: .power),
    
    Sensor(key: "PC3C", name: "RAM", type: .power),
    Sensor(key: "PPBR", name: "Battery", type: .power),
    Sensor(key: "PDTR", name: "DC In", type: .power),
    Sensor(key: "PMTR", name: "Memory Total", type: .power),
    Sensor(key: "PSTR", name: "System Total", type: .power),
    
    Sensor(key: "PU1R", name: "Thunderbolt Left", type: .power),
    Sensor(key: "PU2R", name: "Thunderbolt Right", type: .power),
    
    Sensor(key: "PDBR", name: "Power Delivery Brightness", type: .power),
    
    // HID
    Sensor(key: "pACC MTR Temp Sensor%", name: "CPU performance core %", type: .temperature),
    Sensor(key: "eACC MTR Temp Sensor%", name: "CPU efficiency core %", type: .temperature),
    
    Sensor(key: "GPU MTR Temp Sensor%", name: "GPU core %", type: .temperature),
    Sensor(key: "SOC MTR Temp Sensor%", name: "SOC core %", type: .temperature),
    Sensor(key: "ANE MTR Temp Sensor%", name: "Neural engine %", type: .temperature),
    Sensor(key: "ISP MTR Temp Sensor%", name: "Image Signal Processor %", type: .temperature),
    
    Sensor(key: "PMGR SOC Die Temp Sensor%", name: "Power manager die %", type: .temperature),
    Sensor(key: "PMU tdev%", name: "Power management unit dev %", type: .temperature),
    Sensor(key: "PMU tdie%", name: "Power management unit die %", type: .temperature),
    
    Sensor(key: "gas gauge battery", name: "Battery", type: .temperature),
    Sensor(key: "NAND CH% temp", name: "Disk %s", type: .temperature)
]
