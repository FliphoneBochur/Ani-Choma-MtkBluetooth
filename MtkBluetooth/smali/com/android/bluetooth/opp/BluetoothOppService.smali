.class public Lcom/android/bluetooth/opp/BluetoothOppService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "BluetoothOppService.java"

# interfaces
.implements Lcom/android/bluetooth/IObexConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;,
        Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;,
        Lcom/android/bluetooth/opp/BluetoothOppService$OppBinder;,
        Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final INVISIBLE:Ljava/lang/String; = "visibility=1"

.field private static final MEDIA_SCANNED:I = 0x2

.field private static final MEDIA_SCANNED_FAILED:I = 0x3

.field private static final MSG_INCOMING_BTOPP_CONNECTION:I = 0x64

.field private static final MSG_INCOMING_CONNECTION_RETRY:I = 0x4

.field private static final START_LISTENER:I = 0x1

.field private static final STOP_LISTENER:I = 0xc8

.field private static final SUPPORTED_OPP_FORMAT:[B

.field private static final TAG:Ljava/lang/String; = "BtOppService"

.field private static final V:Z

.field private static final WHERE_CONFIRM_PENDING_INBOUND:Ljava/lang/String; = "direction=1 AND confirm=0"

.field private static final WHERE_INBOUND_SUCCESS:Ljava/lang/String; = "direction=1 AND status=200 AND visibility=1"

.field private static final WHERE_INVISIBLE_UNCONFIRMED:Ljava/lang/String; = "(status>=200 AND visibility=1) OR (direction=1 AND confirm=0)"

.field private static mInstance:Lcom/android/bluetooth/opp/BluetoothOppService;

.field private static sBluetoothOppService:Lcom/android/bluetooth/opp/BluetoothOppService;


# instance fields
.field mAcceptNewConnections:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBatchId:I

.field public mBatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/opp/BluetoothOppBatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIncomingRetries:I

.field private mListenStarted:Z

.field private mMediaScanInProgress:Z

.field private mNewChars:Landroid/database/CharArrayBuffer;

.field private mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

.field private mObserver:Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

.field private mOldChars:Landroid/database/CharArrayBuffer;

.field private mOppSdpHandle:I

.field private mPendingConnection:Ljavax/obex/ObexTransport;

.field private mPendingUpdate:Z

.field private mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

.field private mServerSocket:Lcom/android/bluetooth/ObexServerSockets;

.field public mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

.field private mShares:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/opp/BluetoothOppShareInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

.field private mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

.field private mUpdateThreadRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppService;->SUPPORTED_OPP_FORMAT:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOppSdpHandle:I

    .line 323
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppService$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppService$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    .line 525
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppService$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppService$3;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 81
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->updateFromProvider()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mMediaScanInProgress:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljavax/obex/ObexTransport;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->createServerSession(Ljavax/obex/ObexTransport;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/opp/BluetoothOppService;)I
    .locals 0

    .line 81
    iget p0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I

    return p0
.end method

.method static synthetic access$1302(Lcom/android/bluetooth/opp/BluetoothOppService;I)I
    .locals 0

    .line 81
    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/ObexServerSockets;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSocket:Lcom/android/bluetooth/ObexServerSockets;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->startListener()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/content/Context;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->clearHandoverPendingTask(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/content/Context;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->clearPendingTask(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingUpdate:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingUpdate:Z

    return p1
.end method

.method static synthetic access$200(Landroid/content/ContentResolver;)V
    .locals 0

    .line 81
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->trimDatabase(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/opp/BluetoothOppService;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->deleteShare(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppService;->insertShare(Landroid/database/Cursor;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppService;->updateShare(Landroid/database/Cursor;I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/bluetooth/opp/BluetoothOppService;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->scanFileIfNeeded(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->stopListeners()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/opp/BluetoothOppService;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/opp/BluetoothOppService;Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/opp/BluetoothOppService;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThreadRunning:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThreadRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppNotification;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->startSocketListener()V

    return-void
.end method

.method private clearHandoverPendingTask(Landroid/content/Context;)V
    .locals 8

    .line 1279
    const-string v0, "SQLite exception occur : "

    const-string v1, "BtOppService"

    .line 1281
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "(status == \'190\' AND confirm == \'5\')"

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1285
    goto :goto_0

    .line 1283
    :catch_0
    move-exception v2

    .line 1284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 1287
    :goto_0
    if-nez v2, :cond_0

    .line 1288
    return-void

    .line 1291
    :cond_0
    nop

    .line 1293
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1295
    :try_start_1
    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1300
    nop

    .line 1302
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clear HandoverPendingTask share id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    :cond_1
    const/16 v4, 0x190

    invoke-static {p1, v3, v4}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 1293
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1296
    :catch_1
    move-exception p1

    .line 1297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/CursorIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1299
    return-void

    .line 1305
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1306
    return-void
.end method

.method private clearPendingTask(Landroid/content/Context;)V
    .locals 9

    .line 1245
    const-string v0, "SQLite exception occur : "

    const-string v1, "BtOppService"

    .line 1247
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "confirm == \'0\' AND (visibility IS NULL OR visibility == \'0\')"

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    goto :goto_0

    .line 1249
    :catch_0
    move-exception v3

    .line 1250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 1253
    :goto_0
    if-nez v3, :cond_0

    .line 1254
    return-void

    .line 1257
    :cond_0
    nop

    .line 1259
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1261
    :try_start_1
    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1266
    nop

    .line 1268
    sget-boolean v5, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clear pending task id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1271
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1272
    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "confirm"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1273
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1259
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1262
    :catch_1
    move-exception p1

    .line 1263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/CursorIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1265
    return-void

    .line 1275
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1276
    return-void
.end method

.method private createServerSession(Ljavax/obex/ObexTransport;)V
    .locals 2

    .line 519
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;-><init>(Landroid/content/Context;Ljavax/obex/ObexTransport;Lcom/android/bluetooth/opp/BluetoothOppService;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    .line 520
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->preStart()V

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get ServerSession "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for incoming connection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 521
    const-string v0, "BtOppService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-void
.end method

.method private deleteShare(I)V
    .locals 5

    .line 968
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 976
    iget-wide v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppService;->findBatchWithTimeStamp(J)I

    move-result v1

    .line 977
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 978
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 979
    invoke-virtual {v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->hasShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Z

    move-result v2

    const-string v3, "BtOppService"

    if-eqz v2, :cond_1

    .line 980
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v2, :cond_0

    .line 981
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service cancel batch for share "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_0
    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->cancelBatch()V

    .line 985
    :cond_1
    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 986
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v0, :cond_2

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service remove batch  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->removeBatch(Lcom/android/bluetooth/opp/BluetoothOppBatch;)V

    .line 992
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 993
    return-void
.end method

.method private findBatchWithTimeStamp(J)I
    .locals 3

    .line 1023
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1024
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-wide v1, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mTimestamp:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 1025
    return v0

    .line 1023
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1028
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public static declared-synchronized getBluetoothOppService()Lcom/android/bluetooth/opp/BluetoothOppService;
    .locals 4

    const-class v0, Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter v0

    .line 293
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppService;->sBluetoothOppService:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 294
    const-string v1, "BtOppService"

    const-string v3, "getBluetoothOppService(): service is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-exit v0

    return-object v2

    .line 297
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppService;->sBluetoothOppService:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    const-string v1, "BtOppService"

    const-string v3, "getBluetoothOppService(): service is not available"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    monitor-exit v0

    return-object v2

    .line 301
    :cond_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppService;->sBluetoothOppService:Lcom/android/bluetooth/opp/BluetoothOppService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance()Lcom/android/bluetooth/opp/BluetoothOppService;
    .locals 2

    .line 1191
    const-string v0, "BtOppService"

    const-string v1, "getInstance ++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mInstance:Lcom/android/bluetooth/opp/BluetoothOppService;

    return-object v0
.end method

.method private insertShare(Landroid/database/Cursor;I)V
    .locals 23

    .line 727
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "uri"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 729
    const-string v3, "BtOppService"

    if-eqz v2, :cond_0

    .line 730
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 732
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertShare parsed URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v2

    goto :goto_0

    .line 735
    :cond_0
    const/4 v2, 0x0

    .line 737
    const-string v4, "insertShare found null URI at cursor!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v2

    .line 740
    :goto_0
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 741
    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 742
    const-string v4, "hint"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 743
    const-string v4, "_data"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 744
    const-string v4, "mimetype"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 745
    const-string v4, "direction"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 746
    const-string v4, "destination"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 747
    const-string v4, "visibility"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 748
    const-string v4, "confirm"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 749
    const-string v4, "status"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 750
    const-string v4, "total_bytes"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 751
    const-string v4, "current_bytes"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 752
    const-string v4, "timestamp"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 753
    const-string v4, "scanned"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    move/from16 v22, v4

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    move/from16 v22, v1

    :goto_1
    move-object v5, v2

    invoke-direct/range {v5 .. v22}, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;-><init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIJJJZ)V

    .line 756
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v1, :cond_2

    .line 757
    const-string v1, "Service adding new entry"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID      : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URI     : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HINT    : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FILENAME: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MIMETYPE: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRECTION: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DESTINAT: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VISIBILI: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CONFIRM : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATUS  : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TOTAL   : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CURRENT : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TIMESTAMP : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCANNED : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMediaScanned:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_2
    iget-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    move/from16 v5, p2

    invoke-virtual {v1, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 778
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->isObsolete()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 779
    iget v1, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v5, 0x1eb

    invoke-static {v0, v1, v5}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 791
    :cond_3
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->isReadyToStart()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 792
    iget v1, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v1, :cond_5

    .line 794
    iget-object v1, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    .line 795
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getSendFileInfo(Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v1

    .line 796
    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    if-nez v1, :cond_5

    .line 797
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t open file for OUTBOUND info "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget v1, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v3, 0x190

    invoke-static {v0, v1, v3}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 799
    iget-object v0, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 800
    return-void

    .line 803
    :cond_5
    iget-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v5, " for info "

    if-nez v1, :cond_e

    .line 804
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-direct {v1, v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppBatch;-><init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 805
    iget v6, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    iput v6, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    .line 806
    iget v6, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    add-int/2addr v6, v4

    iput v6, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    .line 807
    iget-object v6, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatches:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    iget v6, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const-string v7, "Service create new Batch "

    if-nez v6, :cond_7

    .line 809
    sget-boolean v6, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v6, :cond_6

    .line 810
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for OUTBOUND info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_6
    new-instance v6, Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-direct {v6, v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppBatch;)V

    iput-object v6, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    goto :goto_2

    .line 815
    :cond_7
    iget v6, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-ne v6, v4, :cond_9

    .line 816
    sget-boolean v6, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v6, :cond_8

    .line 817
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for INBOUND info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_8
    new-instance v6, Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v7, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    invoke-direct {v6, v0, v1, v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppBatch;Lcom/android/bluetooth/opp/BluetoothOppObexSession;)V

    iput-object v6, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 823
    :cond_9
    :goto_2
    iget v6, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v6, :cond_b

    iget-object v6, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz v6, :cond_b

    .line 824
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service start transfer new Batch "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_a
    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->start()V

    goto :goto_3

    .line 827
    :cond_b
    iget v6, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-ne v6, v4, :cond_d

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz v4, :cond_d

    .line 829
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v4, :cond_c

    .line 830
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service start server transfer new Batch "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_c
    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->start()V

    .line 836
    :cond_d
    :goto_3
    goto :goto_4

    .line 837
    :cond_e
    iget-wide v6, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-direct {v0, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->findBatchWithTimeStamp(J)I

    move-result v1

    .line 838
    const/4 v6, -0x1

    if-eq v1, v6, :cond_10

    .line 839
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service add info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to existing batch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatches:Ljava/util/ArrayList;

    .line 840
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 839
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_f
    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatches:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto :goto_4

    .line 844
    :cond_10
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-direct {v1, v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppBatch;-><init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 845
    iget v6, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    iput v6, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    .line 846
    iget v6, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    add-int/2addr v6, v4

    iput v6, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    .line 847
    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatches:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v0, :cond_11

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service add new Batch "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_11
    :goto_4
    return-void
.end method

.method private removeBatch(Lcom/android/bluetooth/opp/BluetoothOppBatch;)V
    .locals 4

    .line 1032
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    const-string v1, "BtOppService"

    if-eqz v0, :cond_0

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove batch "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatches:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1036
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatches:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 1037
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatches:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 1039
    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1040
    return-void

    .line 1043
    :cond_1
    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v2, :cond_3

    .line 1044
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz p1, :cond_2

    .line 1045
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start pending outbound batch "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_2
    new-instance p1, Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-direct {p1, p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppBatch;)V

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 1048
    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->start()V

    .line 1049
    return-void

    .line 1050
    :cond_3
    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    if-eqz v2, :cond_6

    .line 1054
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz p1, :cond_4

    .line 1055
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start pending inbound batch "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_4
    new-instance p1, Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppBatch;Lcom/android/bluetooth/opp/BluetoothOppObexSession;)V

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 1058
    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->start()V

    .line 1059
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1060
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object p1

    iget p1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    if-ne p1, v3, :cond_5

    .line 1062
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->confirmStatusChanged()V

    .line 1064
    :cond_5
    return-void

    .line 1067
    :cond_6
    goto :goto_0

    .line 1069
    :cond_7
    return-void
.end method

.method private scanFileIfNeeded(I)V
    .locals 4

    .line 1072
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 1073
    iget v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMediaScanned:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1076
    :goto_0
    if-nez v0, :cond_1

    .line 1077
    return-void

    .line 1079
    :cond_1
    monitor-enter p0

    .line 1080
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v0, :cond_2

    .line 1081
    const-string v0, "BtOppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scanning file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_2
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mMediaScanInProgress:Z

    if-nez v0, :cond_3

    .line 1084
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mMediaScanInProgress:Z

    .line 1085
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;-><init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;Landroid/os/Handler;)V

    .line 1087
    :cond_3
    monitor-exit p0

    .line 1088
    return-void

    .line 1087
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static declared-synchronized setBluetoothOppService(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 4

    const-class v0, Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter v0

    .line 306
    :try_start_0
    const-string v1, "BtOppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBluetoothOppService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sput-object p0, Lcom/android/bluetooth/opp/BluetoothOppService;->sBluetoothOppService:Lcom/android/bluetooth/opp/BluetoothOppService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    monitor-exit v0

    return-void

    .line 305
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private startListener()V
    .locals 3

    .line 260
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v0, :cond_0

    .line 263
    const-string v0, "BtOppService"

    const-string v1, "Starting RfcommListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 266
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z

    .line 269
    :cond_1
    return-void
.end method

.method private startSocketListener()V
    .locals 8

    .line 468
    const-string v0, "BtOppService"

    const-string v1, "start Socket Listeners"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->stopListeners()V

    .line 471
    const/16 v1, 0xc

    const/16 v2, 0x1023

    invoke-static {p0, v1, v2}, Lcom/android/bluetooth/ObexServerSockets;->createInsecureWithFixedChannels(Lcom/android/bluetooth/IObexConnectionHandler;II)Lcom/android/bluetooth/ObexServerSockets;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSocket:Lcom/android/bluetooth/ObexServerSockets;

    .line 473
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->acceptNewConnections()V

    .line 474
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v2

    .line 475
    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSocket:Lcom/android/bluetooth/ObexServerSockets;

    if-nez v1, :cond_0

    goto :goto_0

    .line 480
    :cond_0
    nop

    .line 481
    invoke-virtual {v1}, Lcom/android/bluetooth/ObexServerSockets;->getRfcommChannel()I

    move-result v4

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSocket:Lcom/android/bluetooth/ObexServerSockets;

    .line 482
    invoke-virtual {v1}, Lcom/android/bluetooth/ObexServerSockets;->getL2capPsm()I

    move-result v5

    const/16 v6, 0x102

    sget-object v7, Lcom/android/bluetooth/opp/BluetoothOppService;->SUPPORTED_OPP_FORMAT:[B

    .line 481
    const-string v3, "OBEX Object Push"

    invoke-virtual/range {v2 .. v7}, Lcom/android/bluetooth/sdp/SdpManager;->createOppOpsRecord(Ljava/lang/String;III[B)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOppSdpHandle:I

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOppSdpHandle :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOppSdpHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return-void

    .line 476
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR:serversocket object is NULL  sdp manager :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mServerSocket:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSocket:Lcom/android/bluetooth/ObexServerSockets;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void
.end method

.method private stopListeners()V
    .locals 4

    .line 1196
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v1, "BtOppService"

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOppSdpHandle:I

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing SDP record mOppSdpHandle :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOppSdpHandle:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v0

    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOppSdpHandle:I

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/sdp/SdpManager;->removeSdpRecord(I)Z

    move-result v0

    .line 1201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoveSDPrecord returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOppSdpHandle:I

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSocket:Lcom/android/bluetooth/ObexServerSockets;

    if-eqz v0, :cond_1

    .line 1205
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/ObexServerSockets;->shutdown(Z)V

    .line 1206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSocket:Lcom/android/bluetooth/ObexServerSockets;

    .line 1209
    :cond_1
    const-string v0, "stopListeners: mServerSocket is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    return-void
.end method

.method private stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 996
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    .line 997
    if-nez p1, :cond_0

    .line 998
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    if-nez v0, :cond_1

    .line 1001
    new-instance v0, Landroid/database/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    .line 1003
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    invoke-interface {p2, p3, v0}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1004
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 1005
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1006
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1008
    :cond_2
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOldChars:Landroid/database/CharArrayBuffer;

    if-eqz p2, :cond_3

    iget p2, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-ge p2, v0, :cond_4

    .line 1009
    :cond_3
    new-instance p2, Landroid/database/CharArrayBuffer;

    invoke-direct {p2, v0}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOldChars:Landroid/database/CharArrayBuffer;

    .line 1011
    :cond_4
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOldChars:Landroid/database/CharArrayBuffer;

    iget-object p2, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 1012
    iget-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    iget-object p3, p3, Landroid/database/CharArrayBuffer;->data:[C

    .line 1013
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, p2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1014
    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_6

    .line 1015
    aget-char v3, p2, v2

    aget-char v4, p3, v2

    if-eq v3, v4, :cond_5

    .line 1016
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 1014
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1019
    :cond_6
    return-object p1
.end method

.method private static trimDatabase(Landroid/content/ContentResolver;)V
    .locals 11

    .line 1094
    const-string v0, "_id"

    :try_start_0
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "(status>=200 AND visibility=1) OR (direction=1 AND confirm=0)"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1096
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "BtOppService"

    if-eqz v2, :cond_0

    .line 1097
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted shares, number = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_0
    sget-object v6, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "direction=1 AND status=200 AND visibility=1"

    const/4 v9, 0x0

    const-string v10, "_id"

    .line 1102
    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1104
    if-nez v1, :cond_1

    .line 1105
    return-void

    .line 1107
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1108
    const/16 v5, 0x32

    if-le v2, v5, :cond_2

    .line 1109
    sub-int/2addr v2, v5

    .line 1111
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1112
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1113
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1114
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id < "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 1116
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v0, :cond_2

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted old inbound success share: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1124
    goto :goto_0

    .line 1122
    :catch_0
    move-exception p0

    .line 1123
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1125
    :goto_0
    return-void
.end method

.method private unregisterReceivers()V
    .locals 3

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterReceivers "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtOppService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_0
    return-void
.end method

.method private updateFromProvider()V
    .locals 2

    .line 574
    monitor-enter p0

    .line 575
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingUpdate:Z

    .line 576
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    if-nez v1, :cond_0

    .line 577
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    .line 578
    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->start()V

    .line 579
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThreadRunning:Z

    .line 581
    :cond_0
    monitor-exit p0

    .line 582
    return-void

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateShare(Landroid/database/Cursor;I)V
    .locals 7

    .line 858
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 859
    const-string v0, "status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 861
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 862
    iget-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    const-string v2, "BtOppService"

    if-eqz v1, :cond_0

    .line 865
    :try_start_0
    iget-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    .line 866
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "uri"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/bluetooth/opp/BluetoothOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 867
    :catch_0
    move-exception v1

    .line 868
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateShare() exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :goto_0
    goto :goto_1

    .line 873
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateShare() called for ID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with null URI"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :goto_1
    iget-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    const-string v3, "hint"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/bluetooth/opp/BluetoothOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 877
    iget-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    const-string v3, "_data"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/bluetooth/opp/BluetoothOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 878
    iget-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    const-string v3, "mimetype"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/bluetooth/opp/BluetoothOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 879
    const-string v1, "direction"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    .line 880
    iget-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    const-string v3, "destination"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/bluetooth/opp/BluetoothOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    .line 881
    const-string v1, "visibility"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 883
    nop

    .line 884
    nop

    .line 885
    const-string v3, "confirm"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 887
    iget v5, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    if-nez v5, :cond_2

    if-eqz v1, :cond_2

    iget v5, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 889
    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v4, :cond_2

    .line 891
    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v6, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 894
    :cond_2
    iput v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    .line 896
    iget v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_3

    if-eqz v4, :cond_3

    .line 898
    move v1, v5

    goto :goto_2

    .line 900
    :cond_3
    move v1, v6

    :goto_2
    nop

    .line 901
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    .line 902
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 904
    iget v3, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 905
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v4, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 908
    :cond_4
    iput v0, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 909
    const-string v0, "total_bytes"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    .line 910
    nop

    .line 911
    const-string v0, "current_bytes"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    .line 912
    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    .line 913
    const-string v0, "scanned"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v5, v6

    :goto_3
    iput-boolean v5, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMediaScanned:Z

    .line 916
    const/4 p1, -0x1

    if-eqz v1, :cond_7

    .line 917
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v0, :cond_6

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service handle info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " confirmation updated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_6
    iget-wide v0, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->findBatchWithTimeStamp(J)I

    move-result v0

    .line 922
    if-eq v0, p1, :cond_7

    .line 923
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 924
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz v1, :cond_7

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->getBatchId()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 925
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->confirmStatusChanged()V

    .line 929
    :cond_7
    iget-wide v0, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->findBatchWithTimeStamp(J)I

    move-result p2

    .line 930
    if-eq p2, p1, :cond_f

    .line 931
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatches:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 932
    iget p2, p1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_8

    iget p2, p1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_f

    .line 934
    :cond_8
    sget-boolean p2, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz p2, :cond_9

    .line 935
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Batch "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is finished"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_9
    iget p2, p1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    const/4 v0, 0x0

    const-string v1, "Unexpected error! batch id "

    if-nez p2, :cond_c

    .line 938
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-nez p2, :cond_a

    .line 939
    const-string p2, "Unexpected error! mTransfer is null"

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 940
    :cond_a
    iget p2, p1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->getBatchId()I

    move-result v3

    if-ne p2, v3, :cond_b

    .line 941
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {p2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->stop()V

    goto :goto_4

    .line 943
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t match mTransfer id "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 944
    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->getBatchId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 943
    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :goto_4
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    goto :goto_6

    .line 948
    :cond_c
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-nez p2, :cond_d

    .line 949
    const-string p2, "Unexpected error! mServerTransfer is null"

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 950
    :cond_d
    iget p2, p1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->getBatchId()I

    move-result v3

    if-ne p2, v3, :cond_e

    .line 951
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {p2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->stop()V

    goto :goto_5

    .line 953
    :cond_e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t match mServerTransfer id "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 955
    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->getBatchId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 953
    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :goto_5
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 959
    :goto_6
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->removeBatch(Lcom/android/bluetooth/opp/BluetoothOppBatch;)V

    .line 962
    :cond_f
    return-void
.end method


# virtual methods
.method acceptNewConnections()V
    .locals 1

    .line 1241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAcceptNewConnections:Z

    .line 1242
    return-void
.end method

.method protected cleanup()V
    .locals 2

    .line 490
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v0, :cond_0

    .line 491
    const-string v0, "BtOppService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->stopListeners()V

    .line 494
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatches:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 498
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 501
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 503
    :cond_3
    return-void
.end method

.method protected create()V
    .locals 3

    .line 198
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "BtOppService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatches:Ljava/util/ArrayList;

    .line 203
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    .line 204
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 205
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppService$1;

    const-string v2, "trimDatabase"

    invoke-direct {v1, p0, v2, v0}, Lcom/android/bluetooth/opp/BluetoothOppService$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 210
    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppService$1;->start()V

    .line 212
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 216
    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 218
    const-string v0, "BtOppService"

    const-string v1, "Local BT device is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v0, :cond_3

    .line 222
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_2

    .line 224
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->dump()V

    goto :goto_0

    .line 226
    :cond_2
    const-string v0, "BtOppService"

    const-string v1, "BluetoothOppPreference.getInstance returned null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_3
    :goto_0
    return-void

    .line 220
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 7

    .line 273
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 274
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 275
    const-string v0, "Shares:"

    invoke-static {p1, v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 277
    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v2, :cond_0

    const-string v2, " -> "

    goto :goto_1

    :cond_0
    const-string v2, " <- "

    .line 278
    :goto_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MM-dd HH:mm:ss"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 279
    new-instance v4, Ljava/util/Date;

    iget-wide v5, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 282
    goto :goto_0

    .line 284
    :cond_1
    return-void
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .line 183
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppService$OppBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppService$OppBinder;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    return-object v0
.end method

.method public onAcceptFailed()V
    .locals 2

    .line 1233
    const-string v0, "BtOppService"

    const-string v1, " onAcceptFailed:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1235
    return-void
.end method

.method public onConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z
    .locals 4

    .line 1216
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    const-string v1, " onConnect BluetoothSocket :"

    const-string v2, "BtOppService"

    if-eqz v0, :cond_0

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " \n :device :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :cond_0
    iget-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAcceptNewConnections:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " rejected"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    return v0

    .line 1223
    :cond_1
    new-instance p1, Lcom/android/bluetooth/BluetoothObexTransport;

    invoke-direct {p1, p2}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 1224
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {p2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 1225
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1226
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1227
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAcceptNewConnections:Z

    .line 1228
    const/4 p1, 0x1

    return p1
.end method

.method public start()Z
    .locals 4

    .line 233
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppService;->V:Z

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "BtOppService"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

    .line 237
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 238
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .line 239
    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 240
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateNotification()V

    .line 241
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->updateFromProvider()V

    .line 242
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->setBluetoothOppService(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    .line 243
    return v3
.end method

.method public stop()Z
    .locals 3

    .line 248
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppService;->sBluetoothOppService:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 249
    const-string v0, "BtOppService"

    const-string v2, "stop() called before start()"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return v1

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->unregisterReceivers()V

    .line 254
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->setBluetoothOppService(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    .line 255
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    return v1
.end method
