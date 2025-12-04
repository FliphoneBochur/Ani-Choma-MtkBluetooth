.class public Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;
.super Ljava/lang/Object;
.source "HeadsetObjectsFactory.java"


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;
    .locals 2

    .line 41
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->sInstance:Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;

    invoke-direct {v1}, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;-><init>()V

    sput-object v1, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->sInstance:Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;

    .line 45
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->sInstance:Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;

    return-object v0

    .line 45
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static setInstanceForTesting(Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;)V
    .locals 4

    .line 55
    invoke-static {}, Lcom/android/bluetooth/Utils;->enforceInstrumentationTestMode()V

    .line 56
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInstanceForTesting(), set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sput-object p0, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->sInstance:Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;

    .line 59
    monitor-exit v0

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public destroyStateMachine(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 0

    .line 86
    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->destroy(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    .line 87
    return-void
.end method

.method public getNativeInterface()Lcom/android/bluetooth/hfp/HeadsetNativeInterface;
    .locals 1

    .line 105
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getInstance()Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object v0

    return-object v0
.end method

.method public makeStateMachine(Landroid/bluetooth/BluetoothDevice;Landroid/os/Looper;Lcom/android/bluetooth/hfp/HeadsetService;Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/hfp/HeadsetNativeInterface;Lcom/android/bluetooth/hfp/HeadsetSystemInterface;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .locals 0

    .line 76
    invoke-static/range {p1 .. p6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->make(Landroid/bluetooth/BluetoothDevice;Landroid/os/Looper;Lcom/android/bluetooth/hfp/HeadsetService;Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/hfp/HeadsetNativeInterface;Lcom/android/bluetooth/hfp/HeadsetSystemInterface;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-result-object p1

    return-object p1
.end method

.method public makeSystemInterface(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetSystemInterface;
    .locals 1

    .line 96
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-direct {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;)V

    return-object v0
.end method
