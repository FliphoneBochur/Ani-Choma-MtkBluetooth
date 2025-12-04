.class public Lcom/android/bluetooth/btservice/AdapterApp;
.super Landroid/app/Application;
.source "AdapterApp.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterApp"

.field private static sRefCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    nop

    .line 30
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/btservice/AdapterApp;->DBG:Z

    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/android/bluetooth/btservice/AdapterApp;->sRefCount:I

    .line 35
    const-string v0, "BluetoothAdapterApp"

    const-string v1, "Loading MTK JNI Library"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v0, "mtkbluetooth_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 40
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 41
    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 42
    const-class v0, Lcom/android/bluetooth/btservice/AdapterApp;

    monitor-enter v0

    .line 43
    :try_start_0
    sget v1, Lcom/android/bluetooth/btservice/AdapterApp;->sRefCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/bluetooth/btservice/AdapterApp;->sRefCount:I

    .line 44
    const-string v1, "BluetoothAdapterApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REFCOUNT: Constructed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Instance Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/bluetooth/btservice/AdapterApp;->sRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 47
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4

    .line 60
    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 61
    const-class v0, Lcom/android/bluetooth/btservice/AdapterApp;

    monitor-enter v0

    .line 62
    :try_start_0
    sget v1, Lcom/android/bluetooth/btservice/AdapterApp;->sRefCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/bluetooth/btservice/AdapterApp;->sRefCount:I

    .line 63
    const-string v1, "BluetoothAdapterApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REFCOUNT: Finalized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Instance Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/bluetooth/btservice/AdapterApp;->sRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 66
    :cond_0
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 51
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 52
    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "BluetoothAdapterApp"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    invoke-static {p0}, Lcom/android/bluetooth/btservice/Config;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method
