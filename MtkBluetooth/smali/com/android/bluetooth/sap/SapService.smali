.class public Lcom/android/bluetooth/sap/SapService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "SapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/sap/SapService$SapBinder;,
        Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;,
        Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;
    }
.end annotation


# static fields
.field private static final CREATE_RETRY_TIME:I = 0xa

.field public static final DEBUG:Z = false

.field public static final MSG_ACQUIRE_WAKE_LOCK:I = 0x138d

.field public static final MSG_CHANGE_STATE:I = 0x138f

.field public static final MSG_RELEASE_WAKE_LOCK:I = 0x138e

.field public static final MSG_SERVERSESSION_CLOSE:I = 0x1388

.field public static final MSG_SESSION_DISCONNECTED:I = 0x138a

.field public static final MSG_SESSION_ESTABLISHED:I = 0x1389

.field private static final RELEASE_WAKE_LOCK_DELAY:I = 0x3e8

.field private static final SAP_UUIDS:[Landroid/os/ParcelUuid;

.field private static final SDP_SAP_SERVICE_NAME:Ljava/lang/String; = "SIM Access"

.field private static final SDP_SAP_VERSION:I = 0x102

.field private static final SHUTDOWN:I = 0x3

.field private static final START_LISTENER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SapService"

.field public static final USER_CONFIRM_TIMEOUT_ACTION:Ljava/lang/String; = "com.android.bluetooth.sap.USER_CONFIRM_TIMEOUT"

.field private static final USER_CONFIRM_TIMEOUT_VALUE:I = 0x61a8

.field private static final USER_TIMEOUT:I = 0x2

.field public static final VERBOSE:Z = false

.field private static sRemoteDeviceName:Ljava/lang/String;

.field private static sSapService:Lcom/android/bluetooth/sap/SapService;


# instance fields
.field private mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field private volatile mInterrupted:Z

.field private mIsRegistered:Z

.field private mIsWaitingAuthorization:Z

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRemoveTimeoutMsg:Z

.field private mSapReceiver:Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;

.field private mSapServer:Lcom/android/bluetooth/sap/SapServer;

.field private mSdpHandle:I

.field private mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private final mSessionStatusHandler:Landroid/os/Handler;

.field private mState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/sap/SapService;->sRemoteDeviceName:Ljava/lang/String;

    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/sap/SapService;->SAP_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 102
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 80
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    .line 81
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 82
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/bluetooth/sap/SapService;->mSdpHandle:I

    .line 83
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 84
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 88
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSapServer:Lcom/android/bluetooth/sap/SapServer;

    .line 89
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 90
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/sap/SapService;->mRemoveTimeoutMsg:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/bluetooth/sap/SapService;->mIsWaitingAuthorization:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/bluetooth/sap/SapService;->mIsRegistered:Z

    .line 430
    new-instance v2, Lcom/android/bluetooth/sap/SapService$1;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/sap/SapService$1;-><init>(Lcom/android/bluetooth/sap/SapService;)V

    iput-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    .line 790
    new-instance v2, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;

    invoke-direct {v2, p0, v0}, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;-><init>(Lcom/android/bluetooth/sap/SapService;Lcom/android/bluetooth/sap/SapService$1;)V

    iput-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mSapReceiver:Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;

    .line 103
    iput v1, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    .line 104
    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->startRfcommSocketListener()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/sap/SapService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapService;->sendCancelUserConfirmationIntent(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->cancelUserTimeoutAlarm()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->stopSapServerSession()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/android/bluetooth/sap/SapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/sap/SapService;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapService;->setState(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->closeService()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->sendShutdownMessage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/sap/SapService;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->initSocket()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->sendConnectTimeoutMessage()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/sap/SapService;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/android/bluetooth/sap/SapService;->mRemoveTimeoutMsg:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/sap/SapService;)Z
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapService;->isAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/bluetooth/sap/SapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/sap/SapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/bluetooth/sap/SapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    sput-object p0, Lcom/android/bluetooth/sap/SapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->startSapServerSession()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/sap/SapService;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/android/bluetooth/sap/SapService;->mIsWaitingAuthorization:Z

    return p0
.end method

.method static synthetic access$702(Lcom/android/bluetooth/sap/SapService;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/android/bluetooth/sap/SapService;->mIsWaitingAuthorization:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->setUserTimeoutAlarm()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/sap/SapService;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private cancelUserTimeoutAlarm()V
    .locals 3

    .line 745
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 746
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/sap/SapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 748
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/sap/SapService;->mRemoveTimeoutMsg:Z

    if-eqz v0, :cond_1

    .line 749
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.sap.USER_CONFIRM_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 750
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 751
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 752
    iput-boolean v1, p0, Lcom/android/bluetooth/sap/SapService;->mRemoveTimeoutMsg:Z

    .line 754
    :cond_1
    return-void
.end method

.method private declared-synchronized closeConnectionSocket()V
    .locals 3

    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 223
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    :try_start_2
    const-string v1, "SapService"

    const-string v2, "Close Connection Socket error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized closeServerSocket()V
    .locals 3

    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 212
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    :try_start_2
    const-string v1, "SapService"

    const-string v2, "Close Server Socket error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private closeService()V
    .locals 4

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/sap/SapService;->mInterrupted:Z

    .line 238
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->closeServerSocket()V

    .line 240
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 242
    :try_start_0
    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->shutdown()V

    .line 243
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->join()V

    .line 244
    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    const-string v2, "SapService"

    const-string v3, "mAcceptThread close error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/16 v2, 0x138d

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 252
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/16 v2, 0x138e

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 253
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 254
    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->closeConnectionSocket()V

    .line 262
    return-void
.end method

.method public static getRemoteDeviceName()Ljava/lang/String;
    .locals 1

    .line 539
    sget-object v0, Lcom/android/bluetooth/sap/SapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getSapService()Lcom/android/bluetooth/sap/SapService;
    .locals 4

    const-class v0, Lcom/android/bluetooth/sap/SapService;

    monitor-enter v0

    .line 711
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/sap/SapService;->sSapService:Lcom/android/bluetooth/sap/SapService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 712
    const-string v1, "SapService"

    const-string v3, "getSapService(): service is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    monitor-exit v0

    return-object v2

    .line 715
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/sap/SapService;->sSapService:Lcom/android/bluetooth/sap/SapService;

    invoke-virtual {v1}, Lcom/android/bluetooth/sap/SapService;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 716
    const-string v1, "SapService"

    const-string v3, "getSapService(): service is not available"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    monitor-exit v0

    return-object v2

    .line 719
    :cond_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/sap/SapService;->sSapService:Lcom/android/bluetooth/sap/SapService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 710
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initSocket()Z
    .locals 8

    .line 149
    nop

    .line 152
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/16 v3, 0xa

    const-string v4, "SapService"

    if-ge v1, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/bluetooth/sap/SapService;->mInterrupted:Z

    if-nez v3, :cond_2

    .line 153
    nop

    .line 158
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v5, 0x10

    invoke-virtual {v3, v5, v2, v2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 160
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->removeSdpRecord()V

    .line 161
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v3

    const-string v5, "SIM Access"

    iget-object v6, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 162
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothServerSocket;->getChannel()I

    move-result v6

    const/16 v7, 0x102

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/bluetooth/sdp/SdpManager;->createSapsRecord(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/bluetooth/sap/SapService;->mSdpHandle:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    goto :goto_1

    .line 167
    :catch_0
    move-exception v2

    .line 168
    const-string v3, "Error create RfcommServerSocket "

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    move v2, v0

    .line 172
    :goto_1
    if-nez v2, :cond_2

    .line 174
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v3, :cond_0

    .line 175
    goto :goto_3

    .line 177
    :cond_0
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    .line 178
    const/16 v5, 0xb

    if-eq v3, v5, :cond_1

    const/16 v5, 0xc

    if-eq v3, v5, :cond_1

    .line 180
    const-string v0, "initServerSocket failed as BT is (being) turned off"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    goto :goto_3

    .line 187
    :cond_1
    const-wide/16 v5, 0x12c

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    goto :goto_2

    .line 188
    :catch_1
    move-exception v3

    .line 189
    const-string v5, "socketAcceptThread thread was interrupted (3)"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    goto :goto_4

    .line 202
    :cond_3
    const-string v0, "Error to create listening socket after 10 try"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_4
    return v2
.end method

.method public static notifyUpdateWakeLock(Landroid/os/Handler;)V
    .locals 1

    .line 113
    if-eqz p0, :cond_0

    .line 114
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p0

    .line 115
    const/16 v0, 0x138d

    iput v0, p0, Landroid/os/Message;->what:I

    .line 116
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 118
    :cond_0
    return-void
.end method

.method private removeSdpRecord()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/bluetooth/sap/SapService;->mSdpHandle:I

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/sap/SapService;->mSdpHandle:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/sdp/SdpManager;->removeSdpRecord(I)Z

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/sap/SapService;->mSdpHandle:I

    .line 128
    :cond_0
    return-void
.end method

.method private sendCancelUserConfirmationIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 757
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 758
    const v1, 0x7f0e0069

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/sap/SapService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 760
    const-string p1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 762
    const-string p1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, p1}, Lcom/android/bluetooth/sap/SapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 763
    return-void
.end method

.method private sendConnectTimeoutMessage()V
    .locals 2

    .line 784
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 785
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 786
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 788
    :cond_0
    return-void
.end method

.method private sendShutdownMessage()V
    .locals 2

    .line 768
    iget-boolean v0, p0, Lcom/android/bluetooth/sap/SapService;->mRemoveTimeoutMsg:Z

    if-eqz v0, :cond_0

    .line 769
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.sap.USER_CONFIRM_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/sap/SapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/sap/SapService;->mIsWaitingAuthorization:Z

    .line 772
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->cancelUserTimeoutAlarm()V

    .line 774
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->removeSdpRecord()V

    .line 775
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 777
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 778
    return-void
.end method

.method private static declared-synchronized setSapService(Lcom/android/bluetooth/sap/SapService;)V
    .locals 1

    const-class v0, Lcom/android/bluetooth/sap/SapService;

    monitor-enter v0

    .line 726
    :try_start_0
    sput-object p0, Lcom/android/bluetooth/sap/SapService;->sSapService:Lcom/android/bluetooth/sap/SapService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    monitor-exit v0

    return-void

    .line 725
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setState(I)V
    .locals 1

    .line 509
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/sap/SapService;->setState(II)V

    .line 510
    return-void
.end method

.method private declared-synchronized setState(II)V
    .locals 1

    monitor-enter p0

    .line 513
    :try_start_0
    iget p2, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    if-eq p1, p2, :cond_1

    .line 517
    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 518
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->SAP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-static {p2}, Lcom/android/bluetooth/btservice/MetricsLogger;->logProfileConnectionEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    .line 520
    :cond_0
    iget p2, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    .line 521
    iput p1, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    .line 522
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    const-string v0, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 524
    const-string p2, "android.bluetooth.profile.extra.STATE"

    iget v0, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 525
    const-string p2, "android.bluetooth.device.extra.DEVICE"

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 526
    const-string p2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/sap/SapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    :cond_1
    monitor-exit p0

    return-void

    .line 512
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setUserTimeoutAlarm()V
    .locals 7

    .line 733
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->cancelUserTimeoutAlarm()V

    .line 734
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/sap/SapService;->mRemoveTimeoutMsg:Z

    .line 735
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.sap.USER_CONFIRM_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 736
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 737
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x61a8

    add-long/2addr v3, v5

    .line 737
    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 739
    return-void
.end method

.method private startRfcommSocketListener()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;-><init>(Lcom/android/bluetooth/sap/SapService;Lcom/android/bluetooth/sap/SapService$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    .line 137
    const-string v1, "SapAcceptThread"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->setName(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->start()V

    .line 140
    :cond_0
    return-void
.end method

.method private startSapServerSession()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 271
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/sap/SapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 272
    const/4 v1, 0x1

    const-string v2, "StartingSapTransaction"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 273
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 278
    :cond_0
    new-instance v0, Lcom/android/bluetooth/sap/SapServer;

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 279
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/bluetooth/sap/SapServer;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSapServer:Lcom/android/bluetooth/sap/SapServer;

    .line 280
    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapServer;->start()V

    .line 285
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/16 v1, 0x138e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    .line 287
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 286
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 293
    return-void
.end method

.method private stopSapServerSession()V
    .locals 2

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    .line 304
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->closeConnectionSocket()V

    .line 305
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->closeServerSocket()V

    .line 307
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/bluetooth/sap/SapService;->setState(I)V

    .line 309
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 311
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->startRfcommSocketListener()V

    .line 319
    :cond_1
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 697
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/sap/SapService;->setState(II)V

    .line 698
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->closeService()V

    .line 699
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 700
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 702
    :cond_0
    return-void
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 543
    nop

    .line 544
    monitor-enter p0

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 546
    iget p1, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->closeConnectionSocket()V

    .line 549
    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/sap/SapService;->setState(II)V

    .line 550
    const/4 v1, 0x1

    .line 556
    :cond_1
    :goto_0
    monitor-exit p0

    .line 557
    return v1

    .line 556
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 562
    monitor-enter p0

    .line 563
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_0
    monitor-exit p0

    .line 567
    return-object v0

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 642
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/sap/SapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    .line 645
    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    .line 644
    return p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 592
    monitor-enter p0

    .line 593
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapService;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 594
    monitor-exit p0

    return v1

    .line 596
    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 598
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 572
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 574
    monitor-enter p0

    .line 575
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 576
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v3

    .line 577
    sget-object v4, Lcom/android/bluetooth/sap/SapService;->SAP_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 578
    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/sap/SapService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 581
    const/4 v4, 0x0

    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 582
    aget v5, p1, v4

    if-ne v3, v5, :cond_1

    .line 583
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 586
    :cond_2
    goto :goto_0

    .line 587
    :cond_3
    monitor-exit p0

    .line 588
    return-object v0

    .line 587
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 531
    iget v0, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    return v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .line 650
    new-instance v0, Lcom/android/bluetooth/sap/SapService$SapBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;-><init>(Lcom/android/bluetooth/sap/SapService;)V

    return-object v0
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    .line 619
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/sap/SapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    .line 622
    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 623
    if-nez p2, :cond_0

    .line 624
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/sap/SapService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 626
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected start()Z
    .locals 4

    .line 655
    const-string v0, "SapService"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 657
    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 658
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 659
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 660
    const-string v2, "com.android.bluetooth.sap.USER_CONFIRM_TIMEOUT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 663
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapService;->mSapReceiver:Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/bluetooth/sap/SapService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 664
    iput-boolean v2, p0, Lcom/android/bluetooth/sap/SapService;->mIsRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    goto :goto_0

    .line 665
    :catch_0
    move-exception v1

    .line 666
    const-string v3, "Unable to register sap receiver"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/sap/SapService;->mInterrupted:Z

    .line 669
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 671
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 672
    invoke-static {p0}, Lcom/android/bluetooth/sap/SapService;->setSapService(Lcom/android/bluetooth/sap/SapService;)V

    .line 673
    return v2
.end method

.method protected stop()Z
    .locals 5

    .line 678
    const-string v0, "SapService"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-boolean v1, p0, Lcom/android/bluetooth/sap/SapService;->mIsRegistered:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 680
    const-string v1, "Avoid unregister when receiver it is not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return v2

    .line 683
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->setSapService(Lcom/android/bluetooth/sap/SapService;)V

    .line 685
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/bluetooth/sap/SapService;->mIsRegistered:Z

    .line 686
    iget-object v3, p0, Lcom/android/bluetooth/sap/SapService;->mSapReceiver:Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/sap/SapService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    goto :goto_0

    .line 687
    :catch_0
    move-exception v3

    .line 688
    const-string v4, "Unable to unregister sap receiver"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    :goto_0
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/sap/SapService;->setState(II)V

    .line 691
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->sendShutdownMessage()V

    .line 692
    return v2
.end method
