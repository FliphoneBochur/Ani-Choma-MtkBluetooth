.class public Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;
.super Ljava/lang/Object;
.source "AvrcpCoverArtManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;,
        Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;,
        Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$Callback;,
        Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$DownloadEvent;
    }
.end annotation


# static fields
.field public static final AVRCP_CONTROLLER_COVER_ART_SCHEME:Ljava/lang/String; = "persist.bluetooth.avrcpcontroller.BIP_DOWNLOAD_SCHEME"

.field private static final DBG:Z

.field public static final SCHEME_NATIVE:Ljava/lang/String; = "native"

.field public static final SCHEME_THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field private static final TAG:Ljava/lang/String; = "AvrcpCoverArtManager"


# instance fields
.field private mBipSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$Callback;

.field protected final mClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoverArtStorage:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;

.field private final mDownloadScheme:Ljava/lang/String;

.field private final mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-string v0, "AvrcpCoverArtManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$Callback;)V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mClients:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mBipSessions:Ljava/util/Map;

    .line 125
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    .line 126
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    invoke-direct {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mCoverArtStorage:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;

    .line 127
    iput-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mCallback:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$Callback;

    .line 128
    nop

    .line 129
    const-string p1, "persist.bluetooth.avrcpcontroller.BIP_DOWNLOAD_SCHEME"

    const-string p2, "thumbnail"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mDownloadScheme:Ljava/lang/String;

    .line 130
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mCoverArtStorage:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->clear()V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->debug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->clearHandleUuids(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->getClient(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->warn(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;)Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->determineImageDescriptor(Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;)Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;)Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mCoverArtStorage:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->error(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;)Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$Callback;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mCallback:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$Callback;

    return-object p0
.end method

.method private clearHandleUuids(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 249
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->getSession(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;

    move-result-object p1

    .line 250
    if-nez p1, :cond_0

    return-void

    .line 251
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;->clearHandleUuids()V

    .line 252
    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .locals 1

    .line 461
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 462
    const-string v0, "AvrcpCoverArtManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    return-void
.end method

.method private determineImageDescriptor(Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;)Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;
    .locals 4

    .line 353
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;

    invoke-direct {p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;-><init>()V

    .line 354
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mDownloadScheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3ebdafe9

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const v2, 0x4f4e50ec

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "native"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 361
    invoke-virtual {p1, v3}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;->setEncoding(I)Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;

    .line 362
    const/16 v0, 0xc8

    invoke-virtual {p1, v0, v0}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;->setFixedDimensions(II)Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;

    .line 365
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor$Builder;->build()Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;

    move-result-object p1

    return-object p1

    .line 357
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private error(Ljava/lang/String;)V
    .locals 1

    .line 477
    const-string v0, "AvrcpCoverArtManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void
.end method

.method private getClient(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;

    return-object p1
.end method

.method private getSession(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mBipSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;

    return-object p1
.end method

.method private warn(Ljava/lang/String;)V
    .locals 1

    .line 470
    const-string v0, "AvrcpCoverArtManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void
.end method


# virtual methods
.method public declared-synchronized cleanup()V
    .locals 2

    monitor-enter p0

    .line 192
    :try_start_0
    const-string v0, "Clean up and shutdown"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->debug(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 194
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 195
    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mCoverArtStorage:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    monitor-enter p0

    .line 141
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", psm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->debug(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 143
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;

    new-instance v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;

    invoke-direct {v1, p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$BipClientCallback;-><init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;-><init>(Landroid/bluetooth/BluetoothDevice;ILcom/android/bluetooth/avrcpcontroller/AvrcpBipClient$Callback;)V

    .line 144
    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mClients:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mBipSessions:Ljava/util/Map;

    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;-><init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 140
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    monitor-enter p0

    .line 173
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->debug(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->getClient(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;

    move-result-object v0

    .line 175
    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No client for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 179
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->shutdown()V

    .line 180
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mBipSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mCoverArtStorage:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->removeImagesForDevice(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 172
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public downloadImage(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download Image - device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->debug(Ljava/lang/String;)V

    .line 285
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->getClient(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;

    move-result-object v0

    .line 286
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 287
    const-string p1, "Cannot download an image. No client is available."

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->error(Ljava/lang/String;)V

    .line 288
    return-object v1

    .line 292
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mCoverArtStorage:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;

    invoke-virtual {v2, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->doesImageExist(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    const-string v0, "Image is already downloaded"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->debug(Ljava/lang/String;)V

    .line 294
    invoke-static {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtProvider;->getImageUri(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 300
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->getHandleForUuid(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    if-nez v2, :cond_2

    .line 302
    const-string p1, "No handle for UUID"

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->warn(Ljava/lang/String;)V

    .line 303
    return-object v1

    .line 305
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->getImageProperties(Ljava/lang/String;)Z

    move-result v0

    .line 306
    if-nez v0, :cond_3

    return-object v1

    .line 309
    :cond_3
    invoke-static {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtProvider;->getImageUri(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getHandleForUuid(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 243
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->getSession(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;

    move-result-object p1

    .line 244
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;->getUuidHandle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 244
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getImageUri(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mCoverArtStorage:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->doesImageExist(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-static {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtProvider;->getImageUri(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 265
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->getClient(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;

    move-result-object p1

    .line 207
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 208
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->getState()I

    move-result p1

    return p1
.end method

.method public getUuidForHandle(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->getSession(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;

    move-result-object p1

    .line 229
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;->getHandleUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 229
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized refreshSession(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    monitor-enter p0

    .line 156
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Refresh OBEX session for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->debug(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->getClient(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;

    move-result-object v0

    .line 158
    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No client for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 162
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->refreshSession()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 155
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeImage(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mCoverArtStorage:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->removeImage(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 441
    nop

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverArtManager:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Download Scheme: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mDownloadScheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mClients:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 444
    invoke-direct {p0, v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->getClient(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;

    move-result-object v4

    .line 445
    invoke-direct {p0, v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->getSession(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;

    move-result-object v5

    .line 446
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "      Client: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "      Handles: \n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-virtual {v5}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;->getSessionHandles()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 450
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "        "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;->getHandleUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    goto :goto_1

    .line 452
    :cond_0
    goto/16 :goto_0

    .line 453
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->mCoverArtStorage:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    return-object v0
.end method
