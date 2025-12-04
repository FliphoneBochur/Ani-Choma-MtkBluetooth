.class public Lcom/android/bluetooth/hfpclient/NativeInterface;
.super Ljava/lang/Object;
.source "NativeInterface.java"


# static fields
.field private static final DBG:Z = false

.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "NativeInterface"

.field private static sInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Lcom/android/bluetooth/hfpclient/NativeInterface;->classInitNative()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/hfpclient/NativeInterface;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private static native connectAudioNative([B)Z
.end method

.method private static native connectNative([B)Z
.end method

.method private static native dialMemoryNative([BI)Z
.end method

.method private static native dialNative([BLjava/lang/String;)Z
.end method

.method private static native disconnectAudioNative([B)Z
.end method

.method private static native disconnectNative([B)Z
.end method

.method private getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 304
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/android/bluetooth/hfpclient/NativeInterface;
    .locals 2

    .line 52
    sget-object v0, Lcom/android/bluetooth/hfpclient/NativeInterface;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/hfpclient/NativeInterface;->sInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/android/bluetooth/hfpclient/NativeInterface;

    invoke-direct {v1}, Lcom/android/bluetooth/hfpclient/NativeInterface;-><init>()V

    sput-object v1, Lcom/android/bluetooth/hfpclient/NativeInterface;->sInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    .line 56
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    sget-object v0, Lcom/android/bluetooth/hfpclient/NativeInterface;->sInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    return-object v0

    .line 56
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static native handleCallActionNative([BII)Z
.end method

.method private native initializeNative()V
.end method

.method private onAudioStateChanged(I[B)V
    .locals 2

    .line 329
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 330
    iput p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    .line 331
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 335
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 336
    if-eqz p1, :cond_0

    .line 337
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 339
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onAudioStateChanged: Ignoring message because service not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_0
    return-void
.end method

.method private onBatteryLevel(I[B)V
    .locals 2

    .line 411
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 412
    iput p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    .line 413
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 417
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 418
    if-eqz p1, :cond_0

    .line 419
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 421
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onBatteryLevel: Ignoring message because service not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :goto_0
    return-void
.end method

.method private onCall(I[B)V
    .locals 2

    .line 442
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 443
    iput p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    .line 444
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 448
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 449
    if-eqz p1, :cond_0

    .line 450
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 452
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCall: Ignoring message because service not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_0
    return-void
.end method

.method private onCallHeld(I[B)V
    .locals 2

    .line 491
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 492
    iput p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    .line 493
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 497
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 498
    if-eqz p1, :cond_0

    .line 499
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 501
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCallHeld: Ignoring message because service not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :goto_0
    return-void
.end method

.method private onCallSetup(I[B)V
    .locals 2

    .line 466
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 467
    iput p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    .line 468
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 473
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 474
    if-eqz p1, :cond_0

    .line 475
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 477
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCallSetup: Ignoring message because service not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_0
    return-void
.end method

.method private onCallWaiting(Ljava/lang/String;[B)V
    .locals 2

    .line 536
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 537
    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueString:Ljava/lang/String;

    .line 538
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 542
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 543
    if-eqz p1, :cond_0

    .line 544
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 546
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCallWaiting: Ignoring message because service not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :goto_0
    return-void
.end method

.method private onClip(Ljava/lang/String;[B)V
    .locals 2

    .line 521
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 522
    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueString:Ljava/lang/String;

    .line 523
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 527
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 528
    if-eqz p1, :cond_0

    .line 529
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 531
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onClip: Ignoring message because service not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :goto_0
    return-void
.end method

.method private onCmdResult(II[B)V
    .locals 2

    .line 587
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 588
    iput p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    .line 589
    iput p2, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt2:I

    .line 590
    invoke-direct {p0, p3}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 594
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 595
    if-eqz p1, :cond_0

    .line 596
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 598
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCmdResult: Ignoring message because service not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :goto_0
    return-void
.end method

.method private onConnectionStateChanged(III[B)V
    .locals 2

    .line 310
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 311
    iput p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    .line 312
    iput p2, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt2:I

    .line 313
    iput p3, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt3:I

    .line 314
    invoke-direct {p0, p4}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 320
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 321
    if-eqz p1, :cond_0

    .line 322
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 324
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring message because service not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_0
    return-void
.end method

.method private onCurrentCalls(IIIILjava/lang/String;[B)V
    .locals 2

    .line 552
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 553
    iput p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    .line 554
    iput p2, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt2:I

    .line 555
    iput p3, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt3:I

    .line 556
    iput p4, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt4:I

    .line 557
    iput-object p5, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueString:Ljava/lang/String;

    .line 558
    invoke-direct {p0, p6}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 562
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 563
    if-eqz p1, :cond_0

    .line 564
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 566
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCurrentCalls: Ignoring message because service not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :goto_0
    return-void
.end method

.method private onCurrentOperator(Ljava/lang/String;[B)V
    .locals 2

    .line 426
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 427
    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueString:Ljava/lang/String;

    .line 428
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 432
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 433
    if-eqz p1, :cond_0

    .line 434
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 436
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCurrentOperator: Ignoring message because service not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :goto_0
    return-void
.end method

.method private onInBandRing(I[B)V
    .locals 2

    .line 620
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 621
    iput p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    .line 622
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 626
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 627
    if-eqz p1, :cond_0

    .line 628
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 630
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onInBandRing: Ignoring message because service not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :goto_0
    return-void
.end method

.method private onLastVoiceTagNumber(Ljava/lang/String;[B)V
    .locals 0

    .line 636
    const-string p1, "NativeInterface"

    const-string p2, "onLastVoiceTagNumber not supported"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-void
.end method

.method private onNetworkRoaming(I[B)V
    .locals 2

    .line 380
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 381
    iput p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    .line 382
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 386
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 387
    if-eqz p1, :cond_0

    .line 388
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 390
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onNetworkRoaming: Ignoring message because service not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :goto_0
    return-void
.end method

.method private onNetworkSignal(I[B)V
    .locals 2

    .line 396
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 397
    iput p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    .line 398
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 402
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 403
    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 406
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onNetworkSignal: Ignoring message because service not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_0
    return-void
.end method

.method private onNetworkState(I[B)V
    .locals 2

    .line 362
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 363
    iput p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    .line 364
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 369
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 370
    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 373
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onNetworkStateChanged: Ignoring message because service not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_0
    return-void
.end method

.method private onRespAndHold(I[B)V
    .locals 2

    .line 506
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 507
    iput p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    .line 508
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 512
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 513
    if-eqz p1, :cond_0

    .line 514
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 516
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onRespAndHold: Ignoring message because service not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :goto_0
    return-void
.end method

.method private onRingIndication([B)V
    .locals 2

    .line 640
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 641
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 645
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 646
    if-eqz p1, :cond_0

    .line 647
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 649
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRingIndication: Ignoring message because service not available: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NativeInterface"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :goto_0
    return-void
.end method

.method private onSubscriberInfo(Ljava/lang/String;I[B)V
    .locals 2

    .line 603
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 604
    iput p2, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    .line 605
    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueString:Ljava/lang/String;

    .line 606
    invoke-direct {p0, p3}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 610
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 611
    if-eqz p1, :cond_0

    .line 612
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 614
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSubscriberInfo: Ignoring message because service not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :goto_0
    return-void
.end method

.method private onUnknownEvent(Ljava/lang/String;[B)V
    .locals 2

    .line 655
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 656
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iput-object p2, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 657
    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueString:Ljava/lang/String;

    .line 661
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 662
    if-eqz p1, :cond_0

    .line 663
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 665
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onUnknowEvent: Ignoring message because service not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :goto_0
    return-void
.end method

.method private onVolumeChange(II[B)V
    .locals 2

    .line 571
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 572
    iput p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    .line 573
    iput p2, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt2:I

    .line 574
    invoke-direct {p0, p3}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 578
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 579
    if-eqz p1, :cond_0

    .line 580
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 582
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onVolumeChange: Ignoring message because service not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :goto_0
    return-void
.end method

.method private onVrStateChanged(I[B)V
    .locals 2

    .line 345
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 346
    iput p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    .line 347
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 352
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    .line 353
    if-eqz p1, :cond_0

    .line 354
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V

    goto :goto_0

    .line 356
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onVrStateChanged: Ignoring message because service not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_0
    return-void
.end method

.method private static native queryCurrentCallsNative([B)Z
.end method

.method private static native queryCurrentOperatorNameNative([B)Z
.end method

.method private static native requestLastVoiceTagNumberNative([B)Z
.end method

.method private static native retrieveSubscriberInfoNative([B)Z
.end method

.method private static native sendATCmdNative([BIIILjava/lang/String;)Z
.end method

.method private static native sendDtmfNative([BB)Z
.end method

.method private static native setVolumeNative([BII)Z
.end method

.method private static native startVoiceRecognitionNative([B)Z
.end method

.method private static native stopVoiceRecognitionNative([B)Z
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/NativeInterface;->cleanupNative()V

    .line 75
    return-void
.end method

.method public connect([B)Z
    .locals 0

    .line 85
    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->connectNative([B)Z

    move-result p1

    return p1
.end method

.method public connectAudio([B)Z
    .locals 0

    .line 107
    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->connectAudioNative([B)Z

    move-result p1

    return p1
.end method

.method public dial([BLjava/lang/String;)Z
    .locals 0

    .line 165
    invoke-static {p1, p2}, Lcom/android/bluetooth/hfpclient/NativeInterface;->dialNative([BLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public dialMemory([BI)Z
    .locals 0

    .line 177
    invoke-static {p1, p2}, Lcom/android/bluetooth/hfpclient/NativeInterface;->dialMemoryNative([BI)Z

    move-result p1

    return p1
.end method

.method public disconnect([B)Z
    .locals 0

    .line 96
    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->disconnectNative([B)Z

    move-result p1

    return p1
.end method

.method public disconnectAudio([B)Z
    .locals 0

    .line 117
    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->disconnectAudioNative([B)Z

    move-result p1

    return p1
.end method

.method public handleCallAction([BII)Z
    .locals 0

    .line 190
    invoke-static {p1, p2, p3}, Lcom/android/bluetooth/hfpclient/NativeInterface;->handleCallActionNative([BII)Z

    move-result p1

    return p1
.end method

.method public initialize()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/NativeInterface;->initializeNative()V

    .line 67
    return-void
.end method

.method public queryCurrentCalls([B)Z
    .locals 0

    .line 201
    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->queryCurrentCallsNative([B)Z

    move-result p1

    return p1
.end method

.method public queryCurrentOperatorName([B)Z
    .locals 0

    .line 212
    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->queryCurrentOperatorNameNative([B)Z

    move-result p1

    return p1
.end method

.method public requestLastVoiceTagNumber([B)Z
    .locals 0

    .line 246
    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->requestLastVoiceTagNumberNative([B)Z

    move-result p1

    return p1
.end method

.method public retrieveSubscriberInfo([B)Z
    .locals 0

    .line 223
    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->retrieveSubscriberInfoNative([B)Z

    move-result p1

    return p1
.end method

.method public sendATCmd([BIIILjava/lang/String;)Z
    .locals 0

    .line 260
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/bluetooth/hfpclient/NativeInterface;->sendATCmdNative([BIIILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public sendDtmf([BB)Z
    .locals 0

    .line 235
    invoke-static {p1, p2}, Lcom/android/bluetooth/hfpclient/NativeInterface;->sendDtmfNative([BB)Z

    move-result p1

    return p1
.end method

.method public setVolume([BII)Z
    .locals 0

    .line 153
    invoke-static {p1, p2, p3}, Lcom/android/bluetooth/hfpclient/NativeInterface;->setVolumeNative([BII)Z

    move-result p1

    return p1
.end method

.method public startVoiceRecognition([B)Z
    .locals 0

    .line 128
    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->startVoiceRecognitionNative([B)Z

    move-result p1

    return p1
.end method

.method public stopVoiceRecognition([B)Z
    .locals 0

    .line 139
    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->stopVoiceRecognitionNative([B)Z

    move-result p1

    return p1
.end method
