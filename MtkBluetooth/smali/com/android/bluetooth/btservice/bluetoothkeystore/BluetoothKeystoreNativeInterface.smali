.class final Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;
.super Ljava/lang/Object;
.source "BluetoothKeystoreNativeInterface.java"


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "BluetoothKeystoreNativeInterface"

.field private static sInstance:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;->INSTANCE_LOCK:Ljava/lang/Object;

    .line 35
    invoke-static {}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;->classInitNative()V

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method public static getInstance()Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;
    .locals 2

    .line 45
    sget-object v0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;->sInstance:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;

    invoke-direct {v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;-><init>()V

    sput-object v1, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;->sInstance:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;

    .line 49
    :cond_0
    sget-object v1, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;->sInstance:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;

    monitor-exit v0

    return-object v1

    .line 50
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getKeyCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 91
    invoke-static {}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->getBluetoothKeystoreService()Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event ignored, service not available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothKeystoreNativeInterface"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 p1, 0x0

    return-object p1
.end method

.method private native initNative()V
.end method

.method private setEncryptKeyOrRemoveKeyCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 74
    invoke-static {}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->getBluetoothKeystoreService()Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;

    move-result-object v0

    .line 75
    const-string v1, "BluetoothKeystoreNativeInterface"

    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->setEncryptKeyOrRemoveKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    goto :goto_1

    .line 82
    :catch_0
    move-exception p1

    .line 83
    const-string p1, "encrypt could not find the algorithm: SHA256"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :catch_1
    move-exception p1

    .line 81
    const-string p1, "IO error while file operating."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :catch_2
    move-exception p1

    .line 79
    const-string p1, "Interrupted while operating."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Event ignored, service not available: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_1
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;->cleanupNative()V

    .line 67
    return-void
.end method

.method public init()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;->initNative()V

    .line 60
    return-void
.end method
