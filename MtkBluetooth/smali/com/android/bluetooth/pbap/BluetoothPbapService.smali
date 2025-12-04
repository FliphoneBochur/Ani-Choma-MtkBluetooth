.class public Lcom/android/bluetooth/pbap/BluetoothPbapService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "BluetoothPbapService.java"

# interfaces
.implements Lcom/android/bluetooth/IObexConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapBinder;,
        Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;,
        Lcom/android/bluetooth/pbap/BluetoothPbapService$BluetoothPbapContentObserver;
    }
.end annotation


# static fields
.field private static final ACCESS_AUTHORITY_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_AUTHORITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field static final AUTH_CANCELLED_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authcancelled"

.field static final AUTH_CHALL_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authchall"

.field static final AUTH_RESPONSE_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authresponse"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field static final CHECK_SECONDARY_VERSION_COUNTER:I = 0x6

.field static final CONTACTS_LOADED:I = 0x5

.field public static final DEBUG:Z = true

.field static final EXTRA_DEVICE:Ljava/lang/String; = "com.android.bluetooth.pbap.device"

.field static final EXTRA_SESSION_KEY:Ljava/lang/String; = "com.android.bluetooth.pbap.sessionkey"

.field static final GET_LOCAL_TELEPHONY_DETAILS:I = 0x8

.field static final LOAD_CONTACTS:I = 0x4

.field static final MSG_ACQUIRE_WAKE_LOCK:I = 0x138c

.field static final MSG_RELEASE_WAKE_LOCK:I = 0x138d

.field static final MSG_STATE_MACHINE_DONE:I = 0x138e

.field private static final PBAP_NOTIFICATION_ID_END:I = 0x1e8480

.field private static final PBAP_NOTIFICATION_ID_START:I = 0xf4240

.field static final RELEASE_WAKE_LOCK_DELAY:I = 0x2710

.field static final ROLLOVER_COUNTERS:I = 0x7

.field private static final SDP_PBAP_SERVER_VERSION:I = 0x102

.field private static final SDP_PBAP_SUPPORTED_FEATURES:I = 0x21f

.field private static final SDP_PBAP_SUPPORTED_REPOSITORIES:I = 0x9

.field static final SHUTDOWN:I = 0x3

.field static final START_LISTENER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapService"

.field static final THIS_PACKAGE_NAME:Ljava/lang/String; = "com.android.bluetooth"

.field static final USER_CONFIRM_TIMEOUT_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.userconfirmtimeout"

.field static final USER_CONFIRM_TIMEOUT_VALUE:I = 0x7530

.field public static final USER_MODE:Z

.field static final USER_TIMEOUT:I = 0x2

.field public static final VERBOSE:Z

.field private static sBluetoothPbapService:Lcom/android/bluetooth/pbap/BluetoothPbapService;

.field private static sLocalPhoneName:Ljava/lang/String;

.field private static sLocalPhoneNum:Ljava/lang/String;


# instance fields
.field private mContactChangeObserver:Lcom/android/bluetooth/pbap/BluetoothPbapService$BluetoothPbapContentObserver;

.field private mContactsLoaded:Z

.field protected mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private volatile mNextNotificationId:I

.field private mPbapReceiver:Landroid/content/BroadcastReceiver;

.field private final mPbapStateMachineMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/pbap/PbapStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private mSdpHandle:I

.field private mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

.field private mSessionStatusHandler:Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

.field private mThreadLoadContacts:Ljava/lang/Thread;

.field private mThreadUpdateSecVersionCounter:Ljava/lang/Thread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 83
    nop

    .line 84
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sqc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    .line 86
    nop

    .line 87
    const-string v0, "ro.build.type"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->USER_MODE:Z

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSdpHandle:I

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    .line 164
    const v0, 0xf4240

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mNextNotificationId:I

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mContactsLoaded:Z

    .line 269
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendUpdateRequest()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/content/Intent;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->parseIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Ljava/util/HashMap;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalTelephonyDetails()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Z
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->isAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1402(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mThreadLoadContacts:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mThreadUpdateSecVersionCounter:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Lcom/android/bluetooth/ObexServerSockets;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/pbap/BluetoothPbapService;Lcom/android/bluetooth/ObexServerSockets;)Lcom/android/bluetooth/ObexServerSockets;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->createSdpRecord()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->loadAllContacts()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/bluetooth/pbap/BluetoothPbapService;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mContactsLoaded:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->updateSecondaryVersion()V

    return-void
.end method

.method private cleanUpSdpRecord()V
    .locals 5

    .line 334
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSdpHandle:I

    const-string v1, "BluetoothPbapService"

    if-gez v0, :cond_0

    .line 335
    const-string v0, "cleanUpSdpRecord, SDP record never created"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void

    .line 338
    :cond_0
    nop

    .line 339
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSdpHandle:I

    .line 340
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v2

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpSdpRecord, mSdpHandle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {v2, v0}, Lcom/android/bluetooth/sdp/SdpManager;->removeSdpRecord(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanUpSdpRecord, removeSdpRecord failed, sdpHandle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 347
    :cond_2
    :goto_0
    const-string v0, "sdpManager is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_3
    :goto_1
    return-void
.end method

.method private cleanUpServerSocket()V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 301
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/pbap/PbapStateMachine;->sendMessage(I)V

    .line 302
    goto :goto_0

    .line 303
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->cleanUpSdpRecord()V

    .line 307
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    if-eqz v0, :cond_1

    .line 308
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/ObexServerSockets;->shutdown(Z)V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    .line 311
    :cond_1
    return-void

    .line 303
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private closeService()V
    .locals 2

    .line 277
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 278
    const-string v0, "BluetoothPbapService"

    const-string v1, "Pbap Service closeService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    invoke-static {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->savePbapParams(Landroid/content/Context;)V

    .line 283
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 285
    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 288
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->cleanUpServerSocket()V

    .line 289
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    if-eqz v0, :cond_3

    .line 293
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 295
    :cond_3
    return-void
.end method

.method private createSdpRecord()V
    .locals 9

    .line 314
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSdpHandle:I

    const-string v1, "BluetoothPbapService"

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 315
    const-string v0, "createSdpRecord, SDP record already created"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v2

    .line 319
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    .line 324
    invoke-virtual {v0}, Lcom/android/bluetooth/ObexServerSockets;->getRfcommChannel()I

    move-result v4

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    invoke-virtual {v0}, Lcom/android/bluetooth/ObexServerSockets;->getL2capPsm()I

    move-result v5

    const/16 v6, 0x102

    const/16 v7, 0x9

    const/16 v8, 0x21f

    .line 323
    const-string v3, "OBEX Phonebook Access Server"

    invoke-virtual/range {v2 .. v8}, Lcom/android/bluetooth/sdp/SdpManager;->createPbapPseRecord(Ljava/lang/String;IIIII)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSdpHandle:I

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created Sdp record, mSdpHandle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSdpHandle:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void

    .line 320
    :cond_2
    :goto_0
    const-string v0, "sdpManager is null, adapter service must be clean"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void
.end method

.method public static declared-synchronized getBluetoothPbapService()Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .locals 4

    const-class v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;

    monitor-enter v0

    .line 629
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sBluetoothPbapService:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 630
    const-string v1, "BluetoothPbapService"

    const-string v3, "getBluetoothPbapService(): service is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    monitor-exit v0

    return-object v2

    .line 633
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sBluetoothPbapService:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 634
    const-string v1, "BluetoothPbapService"

    const-string v3, "getBluetoothPbapService(): service is not available"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 635
    monitor-exit v0

    return-object v2

    .line 637
    :cond_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sBluetoothPbapService:Lcom/android/bluetooth/pbap/BluetoothPbapService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 628
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getLocalPhoneName()Ljava/lang/String;
    .locals 1

    .line 558
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    return-object v0
.end method

.method static getLocalPhoneNum()Ljava/lang/String;
    .locals 1

    .line 554
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method private getLocalTelephonyDetails()V
    .locals 2

    .line 868
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 869
    if-eqz v0, :cond_0

    .line 870
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneNum:Ljava/lang/String;

    .line 871
    const v0, 0x7f0e0058

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    .line 873
    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local Phone Details- Number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPbapService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_1
    return-void
.end method

.method private loadAllContacts()V
    .locals 2

    .line 838
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mThreadLoadContacts:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 839
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    .line 847
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mThreadLoadContacts:Ljava/lang/Thread;

    .line 848
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 850
    :cond_0
    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 7

    .line 202
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothPbapService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 207
    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 209
    if-eq v0, v1, :cond_0

    .line 210
    return-void

    .line 213
    :cond_0
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 214
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 215
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 216
    if-nez v3, :cond_1

    .line 217
    const-string p1, "BluetoothPbapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device not connected! device="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    monitor-exit v2

    return-void

    .line 220
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    invoke-virtual {v4, v1, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->removeMessages(ILjava/lang/Object;)V

    .line 221
    const-string v4, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 223
    const-string v5, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 226
    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 227
    if-eqz p1, :cond_2

    .line 228
    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 229
    sget-boolean p1, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz p1, :cond_2

    .line 230
    const-string p1, "BluetoothPbapService"

    const-string v0, "setPhonebookAccessPermission(ACCESS_ALLOWED)"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_2
    invoke-virtual {v3, v5}, Lcom/android/bluetooth/pbap/PbapStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 235
    :cond_3
    if-eqz p1, :cond_4

    .line 236
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 237
    sget-boolean p1, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz p1, :cond_4

    .line 238
    const-string p1, "BluetoothPbapService"

    const-string v0, "setPhonebookAccessPermission(ACCESS_REJECTED)"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_4
    invoke-virtual {v3, v1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->sendMessage(I)V

    .line 243
    :goto_0
    monitor-exit v2

    .line 244
    goto :goto_1

    .line 243
    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 244
    :cond_5
    const-string v1, "com.android.bluetooth.pbap.authresponse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 245
    const-string v0, "com.android.bluetooth.pbap.sessionkey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    const-string v1, "com.android.bluetooth.pbap.device"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 247
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 248
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 249
    if-nez p1, :cond_6

    .line 250
    monitor-exit v1

    return-void

    .line 252
    :cond_6
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 253
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 254
    monitor-exit v1

    .line 255
    goto :goto_1

    .line 254
    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 255
    :cond_7
    const-string v1, "com.android.bluetooth.pbap.authcancelled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 256
    const-string v0, "com.android.bluetooth.pbap.device"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 257
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 258
    :try_start_2
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 259
    if-nez p1, :cond_8

    .line 260
    monitor-exit v1

    return-void

    .line 262
    :cond_8
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->sendMessage(I)V

    .line 263
    monitor-exit v1

    .line 264
    goto :goto_1

    .line 263
    :catchall_2
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    .line 265
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled intent action: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothPbapService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_1
    return-void
.end method

.method private sendUpdateRequest()V
    .locals 2

    .line 191
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mContactsLoaded:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    .line 194
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 193
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->sendMessage(Landroid/os/Message;)Z

    .line 197
    :cond_0
    return-void
.end method

.method private static declared-synchronized setBluetoothPbapService(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 4

    const-class v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;

    monitor-enter v0

    .line 642
    :try_start_0
    const-string v1, "BluetoothPbapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBluetoothPbapService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    sput-object p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sBluetoothPbapService:Lcom/android/bluetooth/pbap/BluetoothPbapService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    monitor-exit v0

    return-void

    .line 641
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private updateSecondaryVersion()V
    .locals 2

    .line 853
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mThreadUpdateSecVersionCounter:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 854
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$3;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    .line 862
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mThreadUpdateSecVersionCounter:Ljava/lang/Thread;

    .line 863
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 865
    :cond_0
    return-void
.end method


# virtual methods
.method public checkOrGetPhonebookPermission(Lcom/android/bluetooth/pbap/PbapStateMachine;)V
    .locals 6

    .line 778
    invoke-virtual {p1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 779
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v1

    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhonebookAccessPermission() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothPbapService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 785
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 786
    invoke-virtual {p1, v2}, Lcom/android/bluetooth/pbap/PbapStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 787
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 788
    invoke-virtual {p1, v2}, Lcom/android/bluetooth/pbap/PbapStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 790
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 791
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 793
    const-string v4, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 795
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 796
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v1, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 798
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v1, :cond_2

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waiting for authorization for connection from: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    invoke-virtual {v0, v2, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 805
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 809
    :goto_0
    return-void
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 544
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 546
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 547
    if-eqz p1, :cond_0

    .line 548
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->sendMessage(I)V

    .line 550
    :cond_0
    monitor-exit v0

    .line 551
    return-void

    .line 550
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 463
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 467
    :cond_0
    monitor-enter v0

    .line 468
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 469
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 531
    if-eqz p1, :cond_0

    .line 534
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    const/4 v1, 0x6

    .line 536
    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    .line 535
    return p1

    .line 532
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null device"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    .line 447
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 450
    return v1

    .line 453
    :cond_0
    monitor-enter v0

    .line 454
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 455
    if-nez p1, :cond_1

    .line 456
    monitor-exit v0

    return v1

    .line 458
    :cond_1
    invoke-virtual {p1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->getConnectionState()I

    move-result p1

    monitor-exit v0

    return p1

    .line 459
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 473
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 475
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 478
    :cond_0
    monitor-enter v1

    .line 479
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, p1, v3

    .line 480
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 481
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-virtual {v7}, Lcom/android/bluetooth/pbap/PbapStateMachine;->getConnectionState()I

    move-result v7

    if-ne v4, v7, :cond_1

    .line 482
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_1
    goto :goto_1

    .line 479
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 486
    :cond_3
    monitor-exit v1

    .line 487
    return-object v0

    .line 486
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 476
    :cond_4
    :goto_2
    return-object v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .line 563
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapBinder;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    return-object v0
.end method

.method public declared-synchronized onAcceptFailed()V
    .locals 3

    monitor-enter p0

    .line 817
    :try_start_0
    const-string v0, "BluetoothPbapService"

    const-string v1, "PBAP server socket accept thread failed. Restarting the server socket"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 821
    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 824
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->cleanUpServerSocket()V

    .line 826
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    if-eqz v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 831
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 832
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 834
    :try_start_2
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 835
    monitor-exit p0

    return-void

    .line 832
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 816
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z
    .locals 8

    .line 752
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    iget v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mNextNotificationId:I

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Lcom/android/bluetooth/pbap/PbapStateMachine;->make(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/os/Looper;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;Lcom/android/bluetooth/IObexConnectionHandler;Landroid/os/Handler;I)Lcom/android/bluetooth/pbap/PbapStateMachine;

    move-result-object p2

    .line 760
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mNextNotificationId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mNextNotificationId:I

    .line 761
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mNextNotificationId:I

    const v2, 0x1e8480

    if-ne v0, v2, :cond_1

    .line 762
    const v0, 0xf4240

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mNextNotificationId:I

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 765
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->sendMessage(I)V

    .line 768
    return v1

    .line 766
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 753
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnect(): Unexpected null. remoteDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " socket="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothPbapService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 p1, 0x0

    return p1
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    .line 505
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saved connectionPolicy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPbapService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    const/4 v1, 0x6

    .line 511
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 512
    if-nez p2, :cond_1

    .line 513
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    .line 515
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected setCurrentUser(I)V
    .locals 2

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentUser("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPbapService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 651
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setUserUnlocked(I)V

    .line 654
    :cond_0
    return-void
.end method

.method protected setUserUnlocked(I)V
    .locals 2

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserUnlocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothPbapService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendUpdateRequest()V

    .line 660
    return-void
.end method

.method protected start()Z
    .locals 5

    .line 568
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    const-string v1, "BluetoothPbapService"

    if-eqz v0, :cond_0

    .line 569
    const-string v0, "start()"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_0
    iput-object p0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mContext:Landroid/content/Context;

    .line 572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mContactsLoaded:Z

    .line 573
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "PbapHandlerThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 574
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 575
    new-instance v2, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/os/Looper;Lcom/android/bluetooth/pbap/BluetoothPbapService$1;)V

    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    .line 576
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 577
    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 578
    const-string v3, "com.android.bluetooth.pbap.authresponse"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 579
    const-string v3, "com.android.bluetooth.pbap.authcancelled"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 580
    invoke-static {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->init(Landroid/content/Context;)V

    .line 581
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 583
    :try_start_0
    new-instance v2, Lcom/android/bluetooth/pbap/BluetoothPbapService$BluetoothPbapContentObserver;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$BluetoothPbapContentObserver;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mContactChangeObserver:Lcom/android/bluetooth/pbap/BluetoothPbapService$BluetoothPbapContentObserver;

    .line 584
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 585
    invoke-static {p0}, Lcom/android/bluetooth/util/DevicePolicyUtils;->getEnterprisePhoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mContactChangeObserver:Lcom/android/bluetooth/pbap/BluetoothPbapService$BluetoothPbapContentObserver;

    .line 584
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    const-string v0, "Illegal state exception, content observer is already registered"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 587
    :catch_1
    move-exception v0

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLite exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :goto_0
    nop

    .line 593
    :goto_1
    invoke-static {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setBluetoothPbapService(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    .line 595
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    const/16 v1, 0x8

    .line 596
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 595
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->sendMessage(Landroid/os/Message;)Z

    .line 597
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->sendMessage(Landroid/os/Message;)Z

    .line 598
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->sendMessage(Landroid/os/Message;)Z

    .line 599
    return v1
.end method

.method protected stop()Z
    .locals 4

    .line 604
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    const-string v1, "BluetoothPbapService"

    if-eqz v0, :cond_0

    .line 605
    const-string v0, "stop()"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setBluetoothPbapService(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    .line 608
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    if-eqz v2, :cond_1

    .line 609
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 611
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mContactsLoaded:Z

    .line 612
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mContactChangeObserver:Lcom/android/bluetooth/pbap/BluetoothPbapService$BluetoothPbapContentObserver;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 613
    const-string v0, "Avoid unregister when receiver it is not registered"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return v3

    .line 616
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 617
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mContactChangeObserver:Lcom/android/bluetooth/pbap/BluetoothPbapService$BluetoothPbapContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 618
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mContactChangeObserver:Lcom/android/bluetooth/pbap/BluetoothPbapService$BluetoothPbapContentObserver;

    .line 619
    return v3
.end method
