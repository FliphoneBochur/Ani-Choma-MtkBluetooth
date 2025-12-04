.class Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;
.super Landroid/os/Handler;
.source "PbapClientConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final DEFAULT_BATCH_SIZE:I = 0xfa

.field public static final FAV_PATH:Ljava/lang/String; = "telecom/fav.vcf"

.field public static final ICH_PATH:Ljava/lang/String; = "telecom/ich.vcf"

.field private static final L2CAP_INVALID_PSM:I = -0x1

.field public static final MCH_PATH:Ljava/lang/String; = "telecom/mch.vcf"

.field static final MSG_CONNECT:I = 0x1

.field static final MSG_DISCONNECT:I = 0x2

.field static final MSG_DOWNLOAD:I = 0x3

.field public static final OCH_PATH:Ljava/lang/String; = "telecom/och.vcf"

.field private static final PBAP_FEATURE_BROWSING:I = 0x2

.field private static final PBAP_FEATURE_DEFAULT_IMAGE_FORMAT:I = 0x200

.field private static final PBAP_FEATURE_DOWNLOADING:I = 0x1

.field private static final PBAP_FILTER_ADR:J = 0x20L

.field private static final PBAP_FILTER_EMAIL:J = 0x100L

.field private static final PBAP_FILTER_FN:J = 0x2L

.field private static final PBAP_FILTER_N:J = 0x4L

.field private static final PBAP_FILTER_NICKNAME:J = 0x800000L

.field private static final PBAP_FILTER_PHOTO:J = 0x8L

.field private static final PBAP_FILTER_TEL:J = 0x80L

.field private static final PBAP_FILTER_VERSION:J = 0x1L

.field private static final PBAP_REQUESTED_FIELDS:J = 0x8001afL

.field private static final PBAP_SUPPORTED_FEATURE:I = 0x201

.field private static final PBAP_TARGET:[B

.field public static final PBAP_V1_2:I = 0x102

.field public static final PB_PATH:Ljava/lang/String; = "telecom/pb.vcf"

.field public static final SIM_ICH_PATH:Ljava/lang/String; = "SIM1/telecom/ich.vcf"

.field public static final SIM_MCH_PATH:Ljava/lang/String; = "SIM1/telecom/mch.vcf"

.field public static final SIM_OCH_PATH:Ljava/lang/String; = "SIM1/telecom/och.vcf"

.field public static final SIM_PB_PATH:Ljava/lang/String; = "SIM1/telecom/pb.vcf"

.field private static final SUPPORTED_REPOSITORIES_FAVORITES:I = 0x8

.field private static final SUPPORTED_REPOSITORIES_LOCALPHONEBOOK:I = 0x1

.field private static final SUPPORTED_REPOSITORIES_SIMCARD:I = 0x2

.field static final TAG:Ljava/lang/String; = "PbapClientConnHandler"

.field private static final UPPER_LIMIT:I = 0xffff

.field public static final VCARD_TYPE_21:B = 0x0t

.field public static final VCARD_TYPE_30:B = 0x1t

.field static final VDBG:Z = false


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountCreated:Z

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAuth:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;

.field private mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mObexSession:Ljavax/obex/ClientSession;

.field private final mPbapClientStateMachine:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

.field private mPseRec:Landroid/bluetooth/SdpPseRecord;

.field private mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->PBAP_TARGET:[B

    return-void

    :array_0
    .array-data 1
        0x79t
        0x61t
        0x35t
        -0x10t
        -0x10t
        -0x3bt
        0x11t
        -0x28t
        0x9t
        0x66t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 133
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mPseRec:Landroid/bluetooth/SdpPseRecord;

    .line 136
    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAuth:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;

    .line 143
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 144
    iput-object p4, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 145
    iput-object p2, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mContext:Landroid/content/Context;

    .line 146
    iput-object p3, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mPbapClientStateMachine:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    .line 147
    new-instance p1, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAuth:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;

    .line 148
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mPbapClientStateMachine:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-virtual {p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAccountManager:Landroid/accounts/AccountManager;

    .line 149
    new-instance p1, Landroid/accounts/Account;

    iget-object p2, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 150
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mContext:Landroid/content/Context;

    const p4, 0x7f0e006d

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAccount:Landroid/accounts/Account;

    .line 151
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;)V
    .locals 3

    .line 159
    invoke-static {p1}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;->access$000(Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;)Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mPseRec:Landroid/bluetooth/SdpPseRecord;

    .line 136
    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAuth:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;

    .line 160
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 161
    invoke-static {p1}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;->access$100(Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 162
    invoke-static {p1}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;->access$200(Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mContext:Landroid/content/Context;

    .line 163
    invoke-static {p1}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;->access$300(Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;)Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mPbapClientStateMachine:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    .line 164
    new-instance p1, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAuth:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;

    .line 165
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mPbapClientStateMachine:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-virtual {p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAccountManager:Landroid/accounts/AccountManager;

    .line 166
    new-instance p1, Landroid/accounts/Account;

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 167
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0e006d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAccount:Landroid/accounts/Account;

    .line 168
    return-void
.end method

.method private addAccount(Landroid/accounts/Account;)Z
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 462
    const/4 p1, 0x1

    return p1

    .line 464
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private declared-synchronized closeSocket()V
    .locals 4

    monitor-enter p0

    .line 376
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 381
    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :cond_0
    goto :goto_0

    .line 375
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 383
    :catch_0
    move-exception v1

    .line 384
    :try_start_1
    const-string v2, "PbapClientConnHandler"

    const-string v3, "Error when closing socket"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    :goto_0
    monitor-exit p0

    return-void

    .line 375
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private connectObexSession()Z
    .locals 5

    .line 323
    nop

    .line 329
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/bluetooth/BluetoothObexTransport;

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v1, v2}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 330
    new-instance v2, Ljavax/obex/ClientSession;

    invoke-direct {v2, v1}, Ljavax/obex/ClientSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mObexSession:Ljavax/obex/ClientSession;

    .line 331
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAuth:Lcom/android/bluetooth/pbapclient/BluetoothPbapObexAuthenticator;

    invoke-virtual {v2, v1}, Ljavax/obex/ClientSession;->setAuthenticator(Ljavax/obex/Authenticator;)V

    .line 333
    new-instance v1, Ljavax/obex/HeaderSet;

    invoke-direct {v1}, Ljavax/obex/HeaderSet;-><init>()V

    .line 334
    const/16 v2, 0x46

    sget-object v3, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->PBAP_TARGET:[B

    invoke-virtual {v1, v2, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 336
    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mPseRec:Landroid/bluetooth/SdpPseRecord;

    if-eqz v2, :cond_1

    .line 341
    new-instance v2, Lcom/android/bluetooth/pbapclient/ObexAppParameters;

    invoke-direct {v2}, Lcom/android/bluetooth/pbapclient/ObexAppParameters;-><init>()V

    .line 343
    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mPseRec:Landroid/bluetooth/SdpPseRecord;

    invoke-virtual {v3}, Landroid/bluetooth/SdpPseRecord;->getProfileVersion()I

    move-result v3

    const/16 v4, 0x102

    if-lt v3, v4, :cond_0

    .line 344
    const/16 v3, 0x10

    const/16 v4, 0x201

    invoke-virtual {v2, v3, v4}, Lcom/android/bluetooth/pbapclient/ObexAppParameters;->add(BI)V

    .line 348
    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/bluetooth/pbapclient/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 350
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mObexSession:Ljavax/obex/ClientSession;

    invoke-virtual {v2, v1}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    move-result-object v1

    .line 352
    nop

    .line 353
    invoke-virtual {v1}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 363
    :cond_2
    goto :goto_0

    .line 357
    :catch_0
    move-exception v1

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECT Failure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PbapClientConnHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->closeSocket()V

    .line 364
    :goto_0
    return v0
.end method

.method private declared-synchronized connectSocket()Z
    .locals 3

    monitor-enter p0

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mPseRec:Landroid/bluetooth/SdpPseRecord;

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    .line 299
    invoke-virtual {v1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mSocket:Landroid/bluetooth/BluetoothSocket;

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mPseRec:Landroid/bluetooth/SdpPseRecord;

    invoke-virtual {v0}, Landroid/bluetooth/SdpPseRecord;->getL2capPsm()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mPseRec:Landroid/bluetooth/SdpPseRecord;

    invoke-virtual {v1}, Landroid/bluetooth/SdpPseRecord;->getL2capPsm()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createL2capSocket(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mSocket:Landroid/bluetooth/BluetoothSocket;

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mPseRec:Landroid/bluetooth/SdpPseRecord;

    invoke-virtual {v1}, Landroid/bluetooth/SdpPseRecord;->getRfcommChannelNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 312
    :cond_2
    :try_start_1
    const-string v0, "PbapClientConnHandler"

    const-string v1, "Could not create socket"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    goto :goto_1

    .line 294
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 314
    :catch_0
    move-exception v0

    .line 315
    :try_start_2
    const-string v1, "PbapClientConnHandler"

    const-string v2, "Error while connecting socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    :goto_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 294
    :goto_2
    monitor-exit p0

    throw v0
.end method

.method private isRepositorySupported(I)Z
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mPseRec:Landroid/bluetooth/SdpPseRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 496
    return v1

    .line 498
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/SdpPseRecord;->getSupportedRepositories()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private removeAccount(Landroid/accounts/Account;)V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to remove account "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PbapClientConnHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :goto_0
    return-void
.end method

.method private removeCallLog(Landroid/accounts/Account;)V
    .locals 5

    .line 480
    :try_start_0
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-nez p1, :cond_0

    .line 484
    return-void

    .line 486
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "subscription_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    goto :goto_0

    .line 488
    :catch_0
    move-exception p1

    .line 489
    const-string p1, "PbapClientConnHandler"

    const-string v0, "Call Logs could not be deleted, they may not exist yet."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :goto_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .line 370
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->closeSocket()V

    .line 371
    invoke-virtual {p0}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 372
    return-void
.end method

.method downloadCallLog(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 444
    :try_start_0
    new-instance v8, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAccount:Landroid/accounts/Account;

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;-><init>(Ljava/lang/String;Landroid/accounts/Account;JBII)V

    .line 446
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mObexSession:Ljavax/obex/ClientSession;

    invoke-virtual {v8, v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->execute(Ljavax/obex/ClientSession;)V

    .line 447
    new-instance v0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mPbapClientStateMachine:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    .line 448
    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAccount:Landroid/accounts/Account;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Landroid/accounts/Account;)V

    .line 450
    invoke-virtual {v8}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->setResults(Ljava/util/List;)V

    .line 451
    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->onPullComplete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    goto :goto_0

    .line 452
    :catch_0
    move-exception p1

    .line 453
    const-string p1, "PbapClientConnHandler"

    const-string p2, "Download call log failure"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_0
    return-void
.end method

.method downloadContacts(Ljava/lang/String;)V
    .locals 16

    .line 391
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    const-string v10, "PbapClientConnHandler"

    :try_start_0
    new-instance v11, Lcom/android/bluetooth/pbapclient/PhonebookPullRequest;

    iget-object v1, v0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mPbapClientStateMachine:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    .line 392
    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAccount:Landroid/accounts/Account;

    invoke-direct {v11, v1, v2}, Lcom/android/bluetooth/pbapclient/PhonebookPullRequest;-><init>(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 396
    new-instance v1, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;

    const-wide/32 v2, 0x8001af

    invoke-direct {v1, v9, v2, v3}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;-><init>(Ljava/lang/String;J)V

    .line 399
    iget-object v2, v0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mObexSession:Ljavax/obex/ClientSession;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;->execute(Ljavax/obex/ClientSession;)V

    .line 401
    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;->getSize()I

    move-result v1

    .line 402
    const/4 v2, 0x0

    .line 403
    const-string v3, "telecom/pb.vcf"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v12, 0x1

    if-eqz v3, :cond_0

    .line 407
    nop

    .line 409
    add-int/lit8 v1, v1, -0x1

    move v13, v1

    move v14, v12

    goto :goto_0

    .line 403
    :cond_0
    move v13, v1

    move v14, v2

    .line 412
    :goto_0
    const v1, 0xffff

    if-lez v13, :cond_3

    if-gt v14, v1, :cond_3

    .line 413
    const/16 v2, 0xfa

    .line 414
    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v1, v14

    add-int/2addr v1, v12

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 416
    new-instance v8, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;

    iget-object v3, v0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAccount:Landroid/accounts/Account;

    const-wide/32 v4, 0x8001af

    const/4 v6, 0x1

    move-object v1, v8

    move-object/from16 v2, p1

    move v7, v15

    move-object v12, v8

    move v8, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;-><init>(Ljava/lang/String;Landroid/accounts/Account;JBII)V

    .line 420
    iget-object v1, v0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mObexSession:Ljavax/obex/ClientSession;

    invoke-virtual {v12, v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->execute(Ljavax/obex/ClientSession;)V

    .line 421
    invoke-virtual {v12}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->getList()Ljava/util/ArrayList;

    move-result-object v1

    .line 422
    const-string v2, "telecom/fav.vcf"

    if-ne v9, v2, :cond_2

    .line 424
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vcard/VCardEntry;

    .line 425
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/vcard/VCardEntry;->setStarred(Z)V

    .line 426
    goto :goto_1

    .line 424
    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    .line 422
    :cond_2
    const/4 v4, 0x1

    .line 428
    :goto_2
    invoke-virtual {v11, v1}, Lcom/android/bluetooth/pbapclient/PhonebookPullRequest;->setResults(Ljava/util/List;)V

    .line 429
    invoke-virtual {v11}, Lcom/android/bluetooth/pbapclient/PhonebookPullRequest;->onPullComplete()V

    .line 431
    add-int/2addr v14, v15

    .line 432
    sub-int/2addr v13, v15

    .line 433
    move v12, v4

    goto :goto_0

    .line 434
    :cond_3
    if-le v14, v1, :cond_4

    if-lez v13, :cond_4

    .line 435
    const-string v0, "Download contacts incomplete, index exceeded upper limit."

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_4
    goto :goto_3

    .line 437
    :catch_0
    move-exception v0

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download contacts failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :goto_3
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 209
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "PbapClientConnHandler"

    if-eq v0, v1, :cond_7

    const/4 p1, 0x2

    if-eq v0, p1, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 285
    const-string p1, "Received Unexpected Message"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->addAccount(Landroid/accounts/Account;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAccountCreated:Z

    .line 264
    if-nez v0, :cond_1

    .line 265
    const-string p1, "Account creation failed."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void

    .line 268
    :cond_1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->isRepositorySupported(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    const-string v0, "telecom/fav.vcf"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->downloadContacts(Ljava/lang/String;)V

    .line 271
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->isRepositorySupported(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    const-string v0, "telecom/pb.vcf"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->downloadContacts(Ljava/lang/String;)V

    .line 274
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->isRepositorySupported(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 275
    const-string p1, "SIM1/telecom/pb.vcf"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->downloadContacts(Ljava/lang/String;)V

    .line 278
    :cond_4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 279
    const-string v0, "telecom/mch.vcf"

    invoke-virtual {p0, v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->downloadCallLog(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 280
    const-string v0, "telecom/ich.vcf"

    invoke-virtual {p0, v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->downloadCallLog(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 281
    const-string v0, "telecom/och.vcf"

    invoke-virtual {p0, v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->downloadCallLog(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 282
    goto :goto_1

    .line 238
    :cond_5
    :try_start_0
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mObexSession:Ljavax/obex/ClientSession;

    if-eqz p1, :cond_6

    .line 242
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mObexSession:Ljavax/obex/ClientSession;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 243
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mObexSession:Ljavax/obex/ClientSession;

    invoke-virtual {p1}, Ljavax/obex/ClientSession;->close()V

    .line 249
    :cond_6
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->closeSocket()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    goto :goto_0

    .line 250
    :catch_0
    move-exception p1

    .line 251
    const-string v0, "DISCONNECT Failure "

    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    :goto_0
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->removeAccount(Landroid/accounts/Account;)V

    .line 257
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->removeCallLog(Landroid/accounts/Account;)V

    .line 259
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mPbapClientStateMachine:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->sendMessage(I)V

    .line 260
    goto :goto_1

    .line 211
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/SdpPseRecord;

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mPseRec:Landroid/bluetooth/SdpPseRecord;

    .line 213
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->connectSocket()Z

    move-result p1

    const/4 v0, 0x6

    if-eqz p1, :cond_9

    .line 224
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->connectObexSession()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 225
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mPbapClientStateMachine:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 228
    :cond_8
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mPbapClientStateMachine:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->sendMessage(I)V

    .line 231
    nop

    .line 287
    :goto_1
    return-void

    .line 218
    :cond_9
    const-string p1, "Socket CONNECT Failure "

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->mPbapClientStateMachine:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->sendMessage(I)V

    .line 221
    return-void
.end method
