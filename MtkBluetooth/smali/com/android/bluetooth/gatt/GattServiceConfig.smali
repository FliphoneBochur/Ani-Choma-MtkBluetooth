.class Lcom/android/bluetooth/gatt/GattServiceConfig;
.super Ljava/lang/Object;
.source "GattServiceConfig.java"


# static fields
.field public static BLE_BATCH_SCAN_PROPERTY:Ljava/lang/String; = null

.field public static BLE_SCAN_COUNT_PROPERTY:Ljava/lang/String; = null

.field public static BLE_SET_LESCAN_PROPERTY:Ljava/lang/String; = null

.field public static final DBG:Z

.field public static final DEBUG_ADMIN:Z = true

.field public static final TAG_PREFIX:Ljava/lang/String; = "BtGatt."

.field public static final VDBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    nop

    .line 28
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/gatt/GattServiceConfig;->DBG:Z

    .line 30
    sput-boolean v0, Lcom/android/bluetooth/gatt/GattServiceConfig;->VDBG:Z

    .line 34
    const-string v0, "vendor.bluetooth.setlescan"

    sput-object v0, Lcom/android/bluetooth/gatt/GattServiceConfig;->BLE_SET_LESCAN_PROPERTY:Ljava/lang/String;

    .line 35
    const-string v0, "vendor.bluetooth.scancount"

    sput-object v0, Lcom/android/bluetooth/gatt/GattServiceConfig;->BLE_SCAN_COUNT_PROPERTY:Ljava/lang/String;

    .line 36
    const-string v0, "vendor.bluetooth.batchscan"

    sput-object v0, Lcom/android/bluetooth/gatt/GattServiceConfig;->BLE_BATCH_SCAN_PROPERTY:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLeScanDisableByForce()Z
    .locals 2

    .line 39
    sget-object v0, Lcom/android/bluetooth/gatt/GattServiceConfig;->BLE_SET_LESCAN_PROPERTY:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 39
    return v0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
