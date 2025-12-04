.class public Lcom/android/bluetooth/map/BluetoothMapObexServer;
.super Ljavax/obex/ServerRequestHandler;
.source "BluetoothMapObexServer.java"


# static fields
.field private static final D:Z

.field public static final MAP:Landroid/os/ParcelUuid;

.field private static final MAP_TARGET:[B

.field public static final MAS:Landroid/os/ParcelUuid;

.field private static final MAS_INSTANCE_INFORMATION_LENGTH:I = 0xc8

.field public static final MNS:Landroid/os/ParcelUuid;

.field private static final PROVIDER_ANR_TIMEOUT:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "BluetoothMapObexServer"

.field private static final THREADED_MAIL_HEADER_ID:I = 0xfa

.field private static final THREAD_MAIL_KEY:J = 0x534c5349L

.field private static final TYPE_GET_CONVO_LISTING:Ljava/lang/String; = "x-bt/MAP-convo-listing"

.field private static final TYPE_GET_FOLDER_LISTING:Ljava/lang/String; = "x-obex/folder-listing"

.field private static final TYPE_GET_MAS_INSTANCE_INFORMATION:Ljava/lang/String; = "x-bt/MASInstanceInformation"

.field private static final TYPE_GET_MESSAGE_LISTING:Ljava/lang/String; = "x-bt/MAP-msg-listing"

.field private static final TYPE_MESSAGE:Ljava/lang/String; = "x-bt/message"

.field private static final TYPE_MESSAGE_UPDATE:Ljava/lang/String; = "x-bt/MAP-messageUpdate"

.field private static final TYPE_SET_MESSAGE_STATUS:Ljava/lang/String; = "x-bt/messageStatus"

.field private static final TYPE_SET_NOTIFICATION_FILTER:Ljava/lang/String; = "x-bt/MAP-notification-filter"

.field private static final TYPE_SET_NOTIFICATION_REGISTRATION:Ljava/lang/String; = "x-bt/MAP-NotificationRegistration"

.field private static final TYPE_SET_OWNER_STATUS:Ljava/lang/String; = "x-bt/participant"

.field private static final UUID_LENGTH:I = 0x10

.field private static final V:Z


# instance fields
.field private mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

.field private mAccountId:J

.field private mAuthority:Ljava/lang/String;

.field private mBaseUriString:Ljava/lang/String;

.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

.field private mEmailFolderUri:Landroid/net/Uri;

.field private mEnableSmsMms:Z

.field private mIsAborted:Z

.field private mMasId:I

.field private mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

.field private mMessageVersion:Ljava/lang/String;

.field private mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

.field private mProviderClient:Landroid/content/ContentProviderClient;

.field private mRemoteFeatureMask:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mSimManager:Lcom/android/bluetooth/map/BluetoothMapSimManager;

.field private mThreadIdSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    .line 71
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    .line 82
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MAP_TARGET:[B

    .line 100
    nop

    .line 101
    const-string v0, "00001134-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MAP:Landroid/os/ParcelUuid;

    .line 102
    nop

    .line 103
    const-string v0, "00001133-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MNS:Landroid/os/ParcelUuid;

    .line 104
    nop

    .line 105
    const-string v0, "00001132-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MAS:Landroid/os/ParcelUuid;

    .line 104
    return-void

    nop

    :array_0
    .array-data 1
        -0x45t
        0x58t
        0x2bt
        0x40t
        0x42t
        0xct
        0x11t
        -0x25t
        -0x50t
        -0x22t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapMasInstance;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 123
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    .line 125
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    .line 127
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    .line 128
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccountId:J

    .line 129
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 130
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    .line 134
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    .line 137
    const/16 v2, 0x1f

    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    .line 138
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    .line 139
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    .line 141
    const-string v1, "1.0"

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMessageVersion:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 150
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    .line 151
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    .line 152
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 153
    iput-boolean p6, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    .line 154
    iput-object p5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 155
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    .line 156
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 157
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getRemoteFeatureMask()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    .line 159
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 160
    invoke-virtual {p5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getAccountId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccountId:J

    .line 161
    invoke-virtual {p5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAuthority:Ljava/lang/String;

    .line 162
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mResolver:Landroid/content/ContentResolver;

    .line 163
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    const-string p2, "BluetoothMapObexServer"

    if-eqz p1, :cond_0

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BluetoothMapObexServer(): accountId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccountId:J

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p5, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    .line 167
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p1, :cond_1

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BluetoothMapObexServer(): baseUri="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    invoke-virtual {p5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object p1

    sget-object p3, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p1, p3, :cond_2

    .line 171
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAuthority:Ljava/lang/String;

    iget-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccountId:J

    .line 172
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildFolderUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    .line 173
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p1, :cond_2

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BluetoothMapObexServer(): mEmailFolderUri="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 180
    :cond_3
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->buildFolderStructure()V

    .line 182
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setFolderStructure(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 184
    new-instance p1, Lcom/android/bluetooth/map/BluetoothMapContent;

    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-direct {p1, p2, p3, p4}, Lcom/android/bluetooth/map/BluetoothMapContent;-><init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Lcom/android/bluetooth/map/BluetoothMapMasInstance;)V

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/map/BluetoothMapObexServer;Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;J)I
    .locals 0

    .line 66
    invoke-direct/range {p0 .. p8}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;J)I

    move-result p0

    return p0
.end method

.method private acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAuthority:Ljava/lang/String;

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    .line 197
    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 198
    return-object v0

    .line 195
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to acquire provider for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addBaseFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 1

    .line 253
    const-string v0, "inbox"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 254
    const-string v0, "outbox"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 255
    const-string v0, "sent"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 256
    const-string v0, "deleted"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 257
    return-void
.end method

.method private addEmailFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parent_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 306
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_FOLDER_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_0

    .line 310
    const/4 v1, -0x1

    :try_start_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 311
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    const-string v1, "name"

    .line 313
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 314
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 315
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addEmailFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    .line 316
    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->addEmailFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 317
    goto :goto_0

    .line 320
    :cond_0
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p1, :cond_1

    .line 321
    const-string p1, "BluetoothMapObexServer"

    const-string v1, "addEmailFolders(): no elements found"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :cond_1
    if-eqz v0, :cond_2

    .line 326
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_2
    return-void

    .line 325
    :catchall_0
    move-exception p1

    if-eqz v0, :cond_3

    .line 326
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 328
    :cond_3
    throw p1
.end method

.method private addImFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    const-string v0, "inbox"

    const-wide/16 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addImFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 276
    const-string v0, "outbox"

    const-wide/16 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addImFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 278
    const-string v0, "sent"

    const-wide/16 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addImFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 280
    const-string v0, "deleted"

    const-wide/16 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addImFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 282
    const-string v0, "draft"

    const-wide/16 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addImFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 284
    return-void
.end method

.method private addSmsMmsFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 1

    .line 264
    const-string v0, "inbox"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 265
    const-string v0, "outbox"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 266
    const-string v0, "sent"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 267
    const-string v0, "deleted"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 268
    const-string v0, "draft"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 269
    return-void
.end method

.method private buildFolderStructure()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string v1, "root"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 207
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasSmsMmsContent(Z)V

    .line 208
    nop

    .line 209
    nop

    .line 210
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v3, :cond_0

    .line 212
    move v0, v1

    goto :goto_0

    .line 211
    :cond_0
    move v0, v2

    .line 214
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v3, v4, :cond_1

    .line 215
    move v2, v0

    goto :goto_1

    .line 214
    :cond_1
    move v1, v2

    move v2, v0

    goto :goto_1

    .line 210
    :cond_2
    move v1, v2

    .line 218
    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasImContent(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasEmailContent(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string v3, "telecom"

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 223
    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasSmsMmsContent(Z)V

    .line 224
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasImContent(Z)V

    .line 225
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasEmailContent(Z)V

    .line 227
    const-string v3, "msg"

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 228
    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasSmsMmsContent(Z)V

    .line 229
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasImContent(Z)V

    .line 230
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasEmailContent(Z)V

    .line 233
    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->addBaseFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 234
    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    if-eqz v3, :cond_3

    .line 235
    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->addSmsMmsFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 237
    :cond_3
    if-eqz v1, :cond_5

    .line 238
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v1, :cond_4

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildFolderStructure(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BluetoothMapObexServer"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->addEmailFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 243
    :cond_5
    if-eqz v2, :cond_6

    .line 244
    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->addImFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 246
    :cond_6
    return-void
.end method

.method private getFolderElementFromName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 4

    .line 679
    nop

    .line 683
    const-string v0, "BluetoothMapObexServer"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 688
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    .line 689
    if-nez v1, :cond_1

    .line 690
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v2

    const-string v3, "telecom"

    .line 691
    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v2

    const-string v3, "msg"

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    .line 693
    :cond_1
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " resulted in this element: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "null folder"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 693
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 684
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 685
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no folder name supplied, setting folder to current: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 685
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :cond_4
    :goto_2
    goto :goto_3

    .line 696
    :catch_0
    move-exception p1

    .line 697
    const-string v2, "Exception occured getFolderElementFromName"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    :goto_3
    return-object v1
.end method

.method private isUserUnlocked()Z
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static logHeader(Ljavax/obex/HeaderSet;)V
    .locals 3

    .line 2041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dumping HeaderSet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapObexServer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONNECTION_ID : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xcb

    invoke-virtual {p0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NAME : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TYPE : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x42

    invoke-virtual {p0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TARGET : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x46

    invoke-virtual {p0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WHO : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x4a

    invoke-virtual {p0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLICATION_PARAMETER : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x4c

    invoke-virtual {p0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2051
    goto :goto_0

    .line 2049
    :catch_0
    move-exception p0

    .line 2050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump HeaderSet error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    :goto_0
    const-string p0, "NEW!!! Dumping HeaderSet END"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    return-void
.end method

.method private notifyUpdateWakeLock()V
    .locals 2

    .line 2033
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2034
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 2035
    const/16 v1, 0x138d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2036
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2038
    :cond_0
    return-void
.end method

.method private pushMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;Z)I
    .locals 16

    .line 706
    move-object/from16 v0, p0

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v1

    const/16 v10, 0xcc

    const-string v11, "BluetoothMapObexServer"

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 707
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing charset - unable to decode message content. appParams.getCharset() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_0
    return v10

    .line 712
    :cond_1
    move-object/from16 v1, p2

    :try_start_0
    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->getFolderElementFromName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    .line 713
    if-nez v1, :cond_2

    .line 714
    const-string v0, "folderElement == null - sending OBEX_HTTP_PRECON_FAILED"

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return v10

    .line 717
    :cond_2
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v4

    .line 719
    const-string v1, "outbox"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "draft"

    .line 720
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 721
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[pushMessage]: Is only allowed to outbox and draft. folderName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_3
    const/16 v0, 0xc6

    return v0

    .line 731
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 733
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v1

    invoke-static {v8, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parse(Ljava/io/InputStream;I)Lcom/android/bluetooth/map/BluetoothMapbMessage;

    move-result-object v6

    .line 734
    move-object/from16 v1, p4

    invoke-virtual {v6, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setVersionString(Ljava/lang/String;)V

    .line 735
    const-string v1, "[pushMessage] BluetoothMapbMessage.parse success"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-nez v1, :cond_5

    .line 738
    const-string v0, "[pushMessage] observer == null"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/16 v0, 0xd3

    return v0

    .line 742
    :cond_5
    nop

    .line 755
    const-wide/16 v1, -0x1

    if-eqz p5, :cond_8

    if-eqz v6, :cond_8

    .line 757
    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getSingleRecipient()Ljava/lang/String;

    move-result-object v3

    .line 758
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 759
    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v5, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getThreadIdByNumber(Ljava/lang/String;)J

    move-result-wide v12

    .line 760
    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-lez v3, :cond_6

    .line 761
    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v3, v12, v13}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSubIdByThread(J)J

    move-result-wide v12

    goto :goto_0

    .line 763
    :cond_6
    move-wide v12, v1

    .line 765
    :goto_0
    goto :goto_1

    .line 766
    :cond_7
    move-wide v12, v1

    goto :goto_1

    .line 771
    :cond_8
    move-wide v12, v1

    :goto_1
    cmp-long v1, v12, v1

    if-gtz v1, :cond_9

    .line 772
    nop

    .line 773
    nop

    .line 774
    nop

    .line 775
    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 776
    nop

    .line 777
    iget-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    new-instance v12, Lcom/android/bluetooth/map/BluetoothMapObexServer$1;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapObexServer$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapObexServer;Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;)V

    invoke-virtual {v9, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 784
    nop

    .line 796
    nop

    .line 797
    const/16 v0, 0xa0

    return v0

    .line 786
    :cond_9
    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object/from16 v4, p3

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-wide v8, v12

    invoke-direct/range {v1 .. v9}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 792
    :catch_0
    move-exception v0

    .line 794
    const-string v1, "[pushMessage] Exception occured: "

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    const/16 v0, 0xc0

    return v0

    .line 789
    :catch_1
    move-exception v0

    .line 790
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v1, :cond_a

    const-string v1, "[pushMessage] Wrongly formatted bMessage received"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 791
    :cond_a
    return v10
.end method

.method private pushMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Z)I
    .locals 16

    .line 2058
    move-object/from16 v0, p0

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v1

    const/16 v10, 0xcc

    const-string v11, "BluetoothMapObexServer"

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2059
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing charset - unable to decode message content. appParams.getCharset() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2059
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    :cond_0
    return v10

    .line 2064
    :cond_1
    move-object/from16 v1, p2

    :try_start_0
    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->getFolderElementFromName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    .line 2065
    if-nez v1, :cond_2

    .line 2066
    const-string v0, "[pushMessage] folderElement == null - sending OBEX_HTTP_PRECON_FAILED"

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    return v10

    .line 2069
    :cond_2
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2071
    const-string v1, "outbox"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "draft"

    .line 2072
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2073
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[pushMessage]: Is only allowed to outbox and draft. folderName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    :cond_3
    const/16 v0, 0xc6

    return v0

    .line 2083
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 2085
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v1

    invoke-static {v8, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parse(Ljava/io/InputStream;I)Lcom/android/bluetooth/map/BluetoothMapbMessage;

    move-result-object v6

    .line 2086
    const-string v1, "[pushMessage] BluetoothMapbMessage.parse success"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-nez v1, :cond_5

    .line 2089
    const-string v0, "[pushMessage] observer == null"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    const/16 v0, 0xd3

    return v0

    .line 2093
    :cond_5
    nop

    .line 2106
    const-wide/16 v1, -0x1

    if-eqz p4, :cond_8

    if-eqz v6, :cond_8

    .line 2108
    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getSingleRecipient()Ljava/lang/String;

    move-result-object v3

    .line 2109
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2110
    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v5, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getThreadIdByNumber(Ljava/lang/String;)J

    move-result-wide v12

    .line 2111
    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-lez v3, :cond_6

    .line 2112
    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v3, v12, v13}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSubIdByThread(J)J

    move-result-wide v12

    goto :goto_0

    .line 2114
    :cond_6
    move-wide v12, v1

    .line 2116
    :goto_0
    goto :goto_1

    .line 2117
    :cond_7
    move-wide v12, v1

    goto :goto_1

    .line 2122
    :cond_8
    move-wide v12, v1

    :goto_1
    cmp-long v1, v12, v1

    if-gtz v1, :cond_9

    .line 2123
    nop

    .line 2124
    nop

    .line 2125
    nop

    .line 2126
    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 2127
    nop

    .line 2128
    iget-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    new-instance v12, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;-><init>(Lcom/android/bluetooth/map/BluetoothMapObexServer;Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;)V

    invoke-virtual {v9, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2135
    nop

    .line 2147
    nop

    .line 2148
    const/16 v0, 0xa0

    return v0

    .line 2137
    :cond_9
    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object/from16 v4, p3

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-wide v8, v12

    invoke-direct/range {v1 .. v9}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2143
    :catch_0
    move-exception v0

    .line 2145
    const-string v1, "[pushMessage] Exception occured: "

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2146
    const/16 v0, 0xc0

    return v0

    .line 2140
    :catch_1
    move-exception v0

    .line 2141
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v1, :cond_a

    const-string v1, "[pushMessage] Wrongly formatted bMessage received"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2142
    :cond_a
    return v10
.end method

.method private pushMessageGemini(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;J)I
    .locals 17

    .line 805
    move-object/from16 v1, p0

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v2

    const/16 v3, 0xcc

    const-string v4, "BluetoothMapObexServer"

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 806
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushMessage: Missing charset - unable to decode message content. appParams.getCharset() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 806
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_0
    return v3

    .line 810
    :cond_1
    const/4 v2, 0x0

    .line 812
    const/16 v5, 0xa0

    const/16 v6, 0xc0

    move-object/from16 v7, p2

    :try_start_0
    invoke-direct {v1, v7}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->getFolderElementFromName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v9

    .line 813
    if-nez v9, :cond_2

    .line 814
    const-string v7, "pushMessage: folderElement == null - sending OBEX_HTTP_PRECON_FAILED"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    nop

    .line 929
    nop

    .line 815
    return v3

    .line 817
    :cond_2
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v7

    .line 819
    const-string v8, "outbox"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    const/16 v10, 0xc6

    if-nez v8, :cond_4

    const-string v8, "draft"

    .line 820
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 821
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v8, :cond_3

    .line 822
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pushMessage: Is only allowed to outbox and draft. folderName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_3
    nop

    .line 929
    nop

    .line 825
    return v10

    .line 833
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 835
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v8

    invoke-static {v2, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parse(Ljava/io/InputStream;I)Lcom/android/bluetooth/map/BluetoothMapbMessage;

    move-result-object v14

    .line 836
    move-object/from16 v8, p4

    invoke-virtual {v14, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setVersionString(Ljava/lang/String;)V

    .line 837
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v8, :cond_5

    .line 838
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pushMessage: charset"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "folderId: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "Name: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "TYPE: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 838
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_5
    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v15, 0x1

    if-nez v7, :cond_6

    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 844
    :cond_6
    iget-object v7, v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    .line 845
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 846
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v8

    if-ne v8, v15, :cond_7

    .line 847
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v14, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    goto :goto_0

    .line 848
    :cond_7
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    .line 849
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v14, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 851
    :cond_8
    :goto_0
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v7, :cond_9

    .line 852
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updated message type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_9
    iget-object v7, v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const/16 v16, 0xd3

    if-eqz v7, :cond_17

    if-nez v14, :cond_a

    goto/16 :goto_5

    .line 864
    :cond_a
    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v7

    const-wide/16 v11, -0x1

    cmp-long v7, v7, v11

    if-eqz v7, :cond_d

    .line 865
    :cond_b
    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 866
    invoke-virtual {v7, v8}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 867
    :cond_c
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v7

    if-nez v7, :cond_10

    .line 868
    :cond_d
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v7, :cond_e

    .line 869
    const-string v7, "Wrong message type recieved"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    :cond_e
    nop

    .line 929
    if-eqz v2, :cond_f

    .line 931
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 933
    goto :goto_1

    .line 932
    :catch_0
    move-exception v0

    .line 871
    :cond_f
    :goto_1
    return v10

    .line 875
    :cond_10
    :try_start_2
    iget-object v7, v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v11, v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    move-object v8, v14

    move-object/from16 v10, p3

    move-wide/from16 v12, p5

    invoke-virtual/range {v7 .. v13}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->pushMessage(Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;J)J

    move-result-wide v7

    .line 878
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v9, :cond_11

    .line 879
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pushMessage handle: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_11
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gez v9, :cond_14

    .line 882
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v7, :cond_12

    .line 883
    const-string v7, "Message  handle not created"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 885
    :cond_12
    nop

    .line 929
    if-eqz v2, :cond_13

    .line 931
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 933
    goto :goto_2

    .line 932
    :catch_1
    move-exception v0

    .line 885
    :cond_13
    :goto_2
    return v16

    .line 887
    :cond_14
    :try_start_4
    new-instance v9, Ljavax/obex/HeaderSet;

    invoke-direct {v9}, Ljavax/obex/HeaderSet;-><init>()V

    .line 888
    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v10

    invoke-static {v7, v8, v10}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v7

    .line 889
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v8, :cond_15

    .line 890
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleStr: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " message.getType(): "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_15
    invoke-virtual {v9, v15, v7}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 893
    move-object/from16 v7, p1

    invoke-interface {v7, v9}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 929
    if-eqz v2, :cond_16

    .line 931
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 933
    :goto_3
    goto :goto_4

    .line 932
    :catch_2
    move-exception v0

    goto :goto_3

    .line 936
    :cond_16
    :goto_4
    return v5

    .line 858
    :cond_17
    :goto_5
    :try_start_6
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v7, :cond_18

    .line 859
    const-string v7, "mObserver or parsed message not available"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 861
    :cond_18
    nop

    .line 929
    if-eqz v2, :cond_19

    .line 931
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 933
    goto :goto_6

    .line 932
    :catch_3
    move-exception v0

    .line 861
    :cond_19
    :goto_6
    return v16

    .line 929
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_d

    .line 923
    :catch_4
    move-exception v0

    move-object v1, v0

    .line 924
    :try_start_8
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v3, :cond_1a

    .line 925
    const-string v3, "Exception:"

    invoke-static {v4, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 927
    :cond_1a
    nop

    .line 929
    if-eqz v2, :cond_1b

    .line 931
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 933
    goto :goto_7

    .line 932
    :catch_5
    move-exception v0

    .line 927
    :cond_1b
    :goto_7
    return v6

    .line 911
    :catch_6
    move-exception v0

    move-object v3, v0

    .line 912
    :try_start_a
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v7, :cond_1c

    .line 913
    const-string v7, "Exception occured: "

    invoke-static {v4, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 915
    :cond_1c
    iget-boolean v1, v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v1, :cond_1f

    .line 916
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v1, :cond_1d

    .line 917
    const-string v1, "PushMessage Operation Aborted"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 919
    :cond_1d
    nop

    .line 929
    if-eqz v2, :cond_1e

    .line 931
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 933
    goto :goto_8

    .line 932
    :catch_7
    move-exception v0

    .line 919
    :cond_1e
    :goto_8
    return v5

    .line 921
    :cond_1f
    nop

    .line 929
    if-eqz v2, :cond_20

    .line 931
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 933
    goto :goto_9

    .line 932
    :catch_8
    move-exception v0

    .line 921
    :cond_20
    :goto_9
    return v6

    .line 906
    :catch_9
    move-exception v0

    move-object v1, v0

    .line 907
    :try_start_d
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v5, :cond_21

    .line 908
    const-string v5, "Wrongly formatted bMessage received"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 910
    :cond_21
    nop

    .line 929
    if-eqz v2, :cond_22

    .line 931
    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 933
    goto :goto_a

    .line 932
    :catch_a
    move-exception v0

    .line 910
    :cond_22
    :goto_a
    return v3

    .line 895
    :catch_b
    move-exception v0

    .line 898
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object v3

    iput-object v3, v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 904
    goto :goto_b

    .line 899
    :catch_c
    move-exception v0

    .line 901
    :try_start_10
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v1, :cond_23

    .line 902
    const-string v1, "acquireUnstableContentProviderOrThrow FAILED"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 905
    :cond_23
    :goto_b
    nop

    .line 929
    if-eqz v2, :cond_24

    .line 931
    :try_start_11
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 933
    goto :goto_c

    .line 932
    :catch_d
    move-exception v0

    .line 905
    :cond_24
    :goto_c
    return v6

    .line 929
    :goto_d
    if-eqz v2, :cond_25

    .line 931
    :try_start_12
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    .line 933
    goto :goto_e

    .line 932
    :catch_e
    move-exception v0

    .line 935
    :cond_25
    :goto_e
    throw v1
.end method

.method private sendConvoListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I
    .locals 11

    .line 1510
    const-string p3, "BluetoothMapObexServer"

    .line 1511
    nop

    .line 1512
    nop

    .line 1514
    new-instance v0, Ljavax/obex/HeaderSet;

    invoke-direct {v0}, Ljavax/obex/HeaderSet;-><init>()V

    .line 1515
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 1517
    const/16 v2, 0x400

    const/4 v3, 0x0

    if-nez p2, :cond_0

    .line 1518
    new-instance p2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 1519
    invoke-virtual {p2, v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 1520
    invoke-virtual {p2, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    .line 1524
    :cond_0
    const/4 v4, 0x1

    invoke-direct {p0, p2, v4}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->setMsgTypeFilterParams(Lcom/android/bluetooth/map/BluetoothMapAppParams;Z)V

    .line 1528
    const/16 v5, 0xa0

    const/16 v6, 0xc0

    :try_start_0
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 1529
    invoke-virtual {p2, v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 1532
    :cond_1
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v2

    if-ne v2, v8, :cond_2

    .line 1533
    invoke-virtual {p2, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    .line 1536
    :cond_2
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v2

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_3

    .line 1537
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v2, p2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->convoListing(Lcom/android/bluetooth/map/BluetoothMapAppParams;Z)Lcom/android/bluetooth/map/BluetoothMapConvoListing;

    move-result-object v2

    .line 1538
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->getCount()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoListingSize(I)V

    .line 1540
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->encode()[B

    move-result-object v4

    .line 1541
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v9, :cond_7

    .line 1542
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "outBytes size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1545
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v2, p2, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->convoListing(Lcom/android/bluetooth/map/BluetoothMapAppParams;Z)Lcom/android/bluetooth/map/BluetoothMapConvoListing;

    move-result-object v2

    .line 1546
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->getCount()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoListingSize(I)V

    .line 1547
    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    if-eqz v4, :cond_4

    .line 1548
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->refreshSmsMmsConvoVersions()Z

    .line 1550
    :cond_4
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v4, :cond_5

    .line 1551
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->refreshImEmailConvoVersions()Z

    .line 1554
    :cond_5
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->refreshConvoListVersionCounter()V

    .line 1555
    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    and-int/lit16 v4, v4, 0x2000

    if-lez v4, :cond_6

    .line 1557
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 1558
    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getCombinedConvoListVersionCounter()J

    move-result-wide v9

    .line 1557
    invoke-virtual {v1, v9, v10, v7, v8}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoListingVerCounter(JJ)V

    .line 1560
    :cond_6
    invoke-interface {p1}, Ljavax/obex/Operation;->noBodyHeader()V

    const/4 v4, 0x0

    .line 1562
    :cond_7
    :goto_0
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v9, :cond_8

    .line 1563
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "outList size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->getCount()I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " MaxListCount: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result p2

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1563
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :cond_8
    nop

    .line 1567
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getDbIdentifier()J

    move-result-wide v9

    invoke-virtual {v1, v7, v8, v9, v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setDatabaseIdentifier(JJ)V

    .line 1571
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMseTime(J)V

    .line 1572
    const/16 p2, 0x4c

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->encodeParams()[B

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1573
    invoke-interface {p1, v0}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    .line 1576
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1603
    nop

    .line 1605
    invoke-interface {p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result p1

    .line 1606
    if-eqz v4, :cond_d

    .line 1608
    :goto_1
    :try_start_1
    array-length v0, v4

    if-ge v3, v0, :cond_9

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-nez v0, :cond_9

    .line 1609
    array-length v0, v4

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1610
    invoke-virtual {p2, v4, v3, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1611
    add-int/2addr v3, v0

    goto :goto_1

    .line 1619
    :cond_9
    if-eqz p2, :cond_b

    .line 1621
    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1623
    :goto_2
    goto :goto_3

    .line 1622
    :catch_0
    move-exception p1

    goto :goto_2

    .line 1619
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 1613
    :catch_1
    move-exception p1

    .line 1614
    :try_start_3
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v0, :cond_a

    .line 1615
    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1619
    :cond_a
    if-eqz p2, :cond_b

    .line 1621
    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 1626
    :cond_b
    :goto_3
    array-length p1, v4

    if-eq v3, p1, :cond_e

    iget-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-nez p1, :cond_e

    .line 1627
    const-string p1, "sendConvoListingRsp: bytesWritten != outBytes.length - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    return v6

    .line 1619
    :goto_4
    if-eqz p2, :cond_c

    .line 1621
    :try_start_5
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1623
    goto :goto_5

    .line 1622
    :catch_2
    move-exception p2

    .line 1625
    :cond_c
    :goto_5
    throw p1

    .line 1632
    :cond_d
    if-eqz p2, :cond_e

    .line 1634
    :try_start_6
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1636
    goto :goto_6

    .line 1635
    :catch_3
    move-exception p1

    .line 1639
    :cond_e
    :goto_6
    return v5

    .line 1593
    :catch_4
    move-exception p1

    .line 1594
    const-string p2, "sendConvoListingRsp: IllegalArgumentException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1596
    nop

    .line 1602
    return v6

    .line 1577
    :catch_5
    move-exception p1

    .line 1578
    const-string p2, "sendConvoListingRsp: IOException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1579
    nop

    .line 1585
    iget-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz p1, :cond_10

    .line 1586
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p1, :cond_f

    .line 1587
    const-string p1, "sendConvoListingRsp Operation Aborted"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :cond_f
    return v5

    .line 1591
    :cond_10
    return v6
.end method

.method private sendFolderListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 9

    .line 1656
    nop

    .line 1657
    nop

    .line 1658
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 1659
    nop

    .line 1660
    new-instance v1, Ljavax/obex/HeaderSet;

    invoke-direct {v1}, Ljavax/obex/HeaderSet;-><init>()V

    .line 1662
    const/16 v2, 0x400

    if-nez p2, :cond_0

    .line 1663
    new-instance p2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 1664
    invoke-virtual {p2, v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 1667
    :cond_0
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    const-string v4, "BluetoothMapObexServer"

    if-eqz v3, :cond_1

    .line 1668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendFolderList for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    :cond_1
    const/16 v3, 0xc0

    const/16 v5, 0xa0

    :try_start_0
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v6

    .line 1673
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result p2

    .line 1675
    const/4 v7, -0x1

    const/4 v8, 0x0

    if-ne p2, v7, :cond_2

    .line 1676
    move p2, v8

    .line 1679
    :cond_2
    if-ne v6, v7, :cond_3

    .line 1680
    goto :goto_0

    .line 1679
    :cond_3
    move v2, v6

    .line 1683
    :goto_0
    const/4 v6, 0x0

    if-eqz v2, :cond_4

    .line 1684
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v7, p2, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->encode(II)[B

    move-result-object p2

    goto :goto_1

    .line 1687
    :cond_4
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolderCount()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFolderListingSize(I)V

    .line 1688
    invoke-interface {p1}, Ljavax/obex/Operation;->noBodyHeader()V

    move-object p2, v6

    .line 1692
    :goto_1
    const/16 v7, 0x4c

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->encodeParams()[B

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1693
    invoke-interface {p1, v1}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    .line 1695
    if-eqz v2, :cond_5

    .line 1696
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1725
    :cond_5
    nop

    .line 1727
    invoke-interface {p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result p1

    .line 1729
    if-eqz p2, :cond_c

    .line 1731
    :goto_2
    :try_start_1
    array-length v0, p2

    if-ge v8, v0, :cond_6

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-nez v0, :cond_6

    .line 1732
    array-length v0, p2

    sub-int/2addr v0, v8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1733
    invoke-virtual {v6, p2, v8, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1734
    add-int/2addr v8, v0

    goto :goto_2

    .line 1739
    :cond_6
    if-eqz v6, :cond_8

    .line 1741
    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 1739
    :catchall_0
    move-exception p1

    if-eqz v6, :cond_7

    .line 1741
    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1743
    goto :goto_3

    .line 1742
    :catch_0
    move-exception p2

    .line 1745
    :cond_7
    :goto_3
    throw p1

    .line 1736
    :catch_1
    move-exception p1

    .line 1739
    if-eqz v6, :cond_8

    .line 1741
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1743
    :goto_4
    goto :goto_5

    .line 1742
    :catch_2
    move-exception p1

    goto :goto_4

    .line 1746
    :cond_8
    :goto_5
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz p1, :cond_9

    .line 1747
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendFolderList sent "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes out of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    :cond_9
    array-length p1, p2

    if-eq v8, p1, :cond_b

    iget-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz p1, :cond_a

    goto :goto_6

    .line 1753
    :cond_a
    return v3

    .line 1751
    :cond_b
    :goto_6
    return v5

    .line 1757
    :cond_c
    return v5

    .line 1715
    :catch_3
    move-exception p1

    .line 1716
    const-string p2, "sendFolderListingRsp: IllegalArgumentException - sending OBEX_HTTP_BAD_REQUEST Exception:"

    invoke-static {v4, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1718
    nop

    .line 1724
    const/16 p1, 0xcc

    return p1

    .line 1698
    :catch_4
    move-exception p1

    .line 1699
    const-string p2, "sendFolderListingRsp: IOException - sending OBEX_HTTP_BAD_REQUEST Exception:"

    invoke-static {v4, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1701
    nop

    .line 1707
    iget-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz p1, :cond_e

    .line 1708
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p1, :cond_d

    .line 1709
    const-string p1, "sendFolderListingRsp Operation Aborted"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :cond_d
    return v5

    .line 1713
    :cond_e
    return v3
.end method

.method private sendGetMessageRsp(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I
    .locals 5

    .line 1880
    const-string v0, "BluetoothMapObexServer"

    .line 1881
    nop

    .line 1882
    nop

    .line 1885
    const/16 v1, 0xa0

    const/16 v2, 0xc0

    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v3, p2, p3, v4, p4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getMessage(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;)[B

    move-result-object p4

    .line 1888
    invoke-static {p2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1889
    invoke-static {p2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object p2

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {p2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1890
    :cond_0
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result p2

    if-nez p2, :cond_1

    .line 1892
    new-instance p2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 1893
    new-instance p3, Ljavax/obex/HeaderSet;

    invoke-direct {p3}, Ljavax/obex/HeaderSet;-><init>()V

    .line 1894
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFractionDeliver(I)V

    .line 1896
    const/16 v3, 0x4c

    .line 1897
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->encodeParams()[B

    move-result-object p2

    .line 1896
    invoke-virtual {p3, v3, p2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1898
    invoke-interface {p1, p3}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    .line 1899
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz p2, :cond_1

    .line 1900
    const-string p2, "sendGetMessageRsp fractionRequest - set FRACTION_DELIVER_LAST header"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :cond_1
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1932
    nop

    .line 1934
    invoke-interface {p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result p1

    .line 1936
    if-eqz p4, :cond_8

    const/4 p3, 0x0

    .line 1938
    :goto_0
    :try_start_1
    array-length v3, p4

    if-ge p3, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-nez v3, :cond_2

    .line 1939
    array-length v3, p4

    sub-int/2addr v3, p3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1940
    invoke-virtual {p2, p4, p3, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1941
    add-int/2addr p3, v3

    goto :goto_0

    .line 1949
    :cond_2
    if-eqz p2, :cond_4

    .line 1951
    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1953
    :goto_1
    goto :goto_2

    .line 1952
    :catch_0
    move-exception p1

    goto :goto_1

    .line 1949
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 1943
    :catch_1
    move-exception p1

    .line 1945
    :try_start_3
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Abort Received"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1946
    const-string v3, "getMessage() Aborted..."

    invoke-static {v0, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1949
    :cond_3
    if-eqz p2, :cond_4

    .line 1951
    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1956
    :cond_4
    :goto_2
    array-length p1, p4

    if-eq p3, p1, :cond_6

    iget-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz p1, :cond_5

    goto :goto_3

    .line 1959
    :cond_5
    return v2

    .line 1957
    :cond_6
    :goto_3
    return v1

    .line 1949
    :goto_4
    if-eqz p2, :cond_7

    .line 1951
    :try_start_5
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1953
    goto :goto_5

    .line 1952
    :catch_2
    move-exception p2

    .line 1955
    :cond_7
    :goto_5
    throw p1

    .line 1963
    :cond_8
    return v1

    .line 1922
    :catch_3
    move-exception p1

    .line 1923
    const-string p2, "sendGetMessageRsp: IllegalArgumentException (e.g. invalid handle) - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1925
    nop

    .line 1931
    return v2

    .line 1906
    :catch_4
    move-exception p1

    .line 1907
    const-string p2, "sendGetMessageRsp: IOException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1908
    nop

    .line 1914
    iget-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz p1, :cond_a

    .line 1915
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p1, :cond_9

    .line 1916
    const-string p1, "sendGetMessageRsp Operation Aborted"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    :cond_9
    return v1

    .line 1920
    :cond_a
    return v2
.end method

.method private sendMASInstanceInformationRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 6

    .line 1772
    const-string v0, "BluetoothMapObexServer"

    .line 1773
    nop

    .line 1774
    nop

    .line 1775
    nop

    .line 1778
    const/16 v1, 0xa0

    const/16 v2, 0xc0

    :try_start_0
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMasInstanceId()I

    move-result p2

    if-ne v3, p2, :cond_10

    .line 1779
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz p2, :cond_7

    .line 1780
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object p2

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p2, v3, :cond_1

    .line 1781
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1782
    :cond_0
    const-string p2, "EMAIL"

    :goto_0
    goto :goto_3

    .line 1783
    :cond_1
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object p2

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p2, v3, :cond_6

    .line 1784
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getUciFull()Ljava/lang/String;

    move-result-object p2

    .line 1785
    if-nez p2, :cond_8

    .line 1786
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getUci()Ljava/lang/String;

    move-result-object p2

    .line 1788
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1789
    const/4 v4, 0x5

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    :goto_1
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1790
    const-string v4, "un"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1791
    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_3

    .line 1792
    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1793
    :cond_3
    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_4

    .line 1794
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    :cond_4
    :goto_2
    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1797
    if-eqz p2, :cond_5

    .line 1798
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1801
    goto :goto_3

    .line 1783
    :cond_6
    const/4 p2, 0x0

    goto :goto_3

    .line 1804
    :cond_7
    const-string p2, "SMS/MMS"

    .line 1812
    :cond_8
    :goto_3
    const/16 v3, 0xc8

    invoke-static {p2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->truncateUtf8StringToBytearray(Ljava/lang/String;I)[B

    move-result-object p2

    .line 1816
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1829
    nop

    .line 1831
    invoke-interface {p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result p1

    .line 1833
    if-eqz p2, :cond_f

    const/4 v4, 0x0

    .line 1835
    :goto_4
    :try_start_1
    array-length v5, p2

    if-ge v4, v5, :cond_9

    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-nez v5, :cond_9

    .line 1836
    array-length v5, p2

    sub-int/2addr v5, v4

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1837
    invoke-virtual {v3, p2, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1838
    add-int/2addr v4, v5

    goto :goto_4

    .line 1843
    :cond_9
    if-eqz v3, :cond_b

    .line 1845
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    .line 1843
    :catchall_0
    move-exception p1

    if-eqz v3, :cond_a

    .line 1845
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1847
    goto :goto_5

    .line 1846
    :catch_0
    move-exception p2

    .line 1849
    :cond_a
    :goto_5
    throw p1

    .line 1840
    :catch_1
    move-exception p1

    .line 1843
    if-eqz v3, :cond_b

    .line 1845
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1847
    :goto_6
    goto :goto_7

    .line 1846
    :catch_2
    move-exception p1

    goto :goto_6

    .line 1850
    :cond_b
    :goto_7
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz p1, :cond_c

    .line 1851
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMASInstanceInformationRsp sent "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes out of "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    :cond_c
    array-length p1, p2

    if-eq v4, p1, :cond_e

    iget-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz p1, :cond_d

    goto :goto_8

    .line 1857
    :cond_d
    return v2

    .line 1855
    :cond_e
    :goto_8
    return v1

    .line 1860
    :cond_f
    return v1

    .line 1808
    :cond_10
    return v2

    .line 1818
    :catch_3
    move-exception p1

    .line 1819
    const-string p2, "sendMASInstanceInformationRsp: IOException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1821
    iget-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz p1, :cond_12

    .line 1822
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p1, :cond_11

    .line 1823
    const-string p1, "sendMASInstanceInformationRsp Operation Aborted"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    :cond_11
    return v1

    .line 1827
    :cond_12
    return v2
.end method

.method private sendMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;J)I
    .locals 9

    .line 2155
    move-object v0, p0

    const-string v1, "BluetoothMapObexServer"

    move-object v2, p2

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->getFolderElementFromName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v4

    .line 2156
    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    move-object v2, p5

    move-object v3, p4

    move-object v5, p3

    move-wide/from16 v7, p7

    invoke-virtual/range {v2 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->pushMessage(Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;J)J

    move-result-wide v2

    .line 2158
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v0, :cond_0

    .line 2159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendMessage] handle: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 2161
    const-string v0, "[sendMessage] handle < 0"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    const/16 v0, 0xd3

    return v0

    .line 2164
    :cond_1
    new-instance v0, Ljavax/obex/HeaderSet;

    invoke-direct {v0}, Ljavax/obex/HeaderSet;-><init>()V

    .line 2165
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v2

    .line 2166
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v3, :cond_2

    .line 2167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendMessage] handleStr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " message.getType(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2168
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2167
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 2170
    move-object v2, p1

    invoke-interface {p1, v0}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    .line 2172
    invoke-virtual {p6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2180
    nop

    .line 2181
    const/16 v0, 0xa0

    return v0

    .line 2176
    :catch_0
    move-exception v0

    .line 2178
    const-string v2, "[sendMessage] Exception occured: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2179
    const/16 v0, 0xc0

    return v0

    .line 2173
    :catch_1
    move-exception v0

    .line 2174
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v2, :cond_3

    const-string v2, "[sendMessage] Wrongly formatted bMessage received"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2175
    :cond_3
    const/16 v0, 0xcc

    return v0
.end method

.method private sendMessageListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I
    .locals 10

    .line 1295
    nop

    .line 1296
    nop

    .line 1297
    nop

    .line 1298
    nop

    .line 1299
    new-instance v0, Ljavax/obex/HeaderSet;

    invoke-direct {v0}, Ljavax/obex/HeaderSet;-><init>()V

    .line 1300
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 1302
    const/16 v2, 0x400

    const/4 v3, 0x0

    if-nez p2, :cond_0

    .line 1303
    new-instance p2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 1304
    invoke-virtual {p2, v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 1305
    invoke-virtual {p2, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    .line 1317
    :cond_0
    nop

    .line 1318
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMsgHandle()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/16 v6, 0xc0

    const-string v7, "BluetoothMapObexServer"

    if-nez v4, :cond_3

    .line 1319
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1325
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->getFolderElementFromName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object p3

    .line 1326
    if-nez p3, :cond_2

    .line 1327
    const-string p1, "sendMessageListingRsp: folderToList == null-sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    return v6

    .line 1331
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendMessageListingRsp: has sms "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", has email "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasEmailContent()Z

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", has IM "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasImContent()Z

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1331
    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1321
    :cond_3
    :goto_0
    const-string p3, "sendMessageListingRsp: ignore folder "

    invoke-static {v7, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object p3

    .line 1323
    invoke-virtual {p3, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setIngore(Z)V

    .line 1337
    :goto_1
    const/16 v4, 0xa0

    :try_start_0
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 1338
    invoke-virtual {p2, v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 1341
    :cond_4
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v2

    if-ne v2, v9, :cond_5

    .line 1342
    invoke-virtual {p2, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    .line 1346
    :cond_5
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v2

    if-eqz v2, :cond_7

    .line 1347
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v2, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListing(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListing;

    move-result-object p2

    .line 1349
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMessageListingSize(I)V

    .line 1351
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    and-int/lit16 v2, v2, 0x200

    if-lez v2, :cond_6

    .line 1353
    const-string v2, "1.1"

    goto :goto_2

    .line 1355
    :cond_6
    const-string v2, "1.0"

    .line 1359
    :goto_2
    iget-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    invoke-virtual {p2, v8, v2}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->encode(ZLjava/lang/String;)[B

    move-result-object v2

    .line 1360
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->hasUnread()Z

    move-result p2

    .line 1361
    goto :goto_3

    .line 1362
    :cond_7
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v2, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingSize(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v2

    .line 1363
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v8, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingHasUnread(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result p2

    .line 1364
    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMessageListingSize(I)V

    .line 1365
    invoke-interface {p1}, Ljavax/obex/Operation;->noBodyHeader()V

    const/4 v2, 0x0

    .line 1367
    :goto_3
    invoke-virtual {p3, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setIngore(Z)V

    .line 1370
    if-eqz p2, :cond_8

    .line 1371
    invoke-virtual {v1, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNewMessage(I)V

    goto :goto_4

    .line 1373
    :cond_8
    invoke-virtual {v1, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNewMessage(I)V

    .line 1375
    :goto_4
    iget p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    const/16 p3, 0x800

    and-int/2addr p2, p3

    const-wide/16 v8, 0x0

    if-ne p2, p3, :cond_9

    .line 1377
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getDbIdentifier()J

    move-result-wide p2

    invoke-virtual {v1, v8, v9, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setDatabaseIdentifier(JJ)V

    .line 1379
    :cond_9
    iget p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    const/16 p3, 0x1000

    and-int/2addr p2, p3

    if-ne p2, p3, :cond_a

    .line 1382
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->refreshFolderVersionCounter()V

    .line 1383
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getFolderVersionCounter()J

    move-result-wide p2

    invoke-virtual {v1, p2, p3, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFolderVerCounter(JJ)V

    .line 1385
    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-virtual {v1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMseTime(J)V

    .line 1386
    const/16 p2, 0x4c

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->encodeParams()[B

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1387
    invoke-interface {p1, v0}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    .line 1390
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1417
    nop

    .line 1419
    invoke-interface {p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result p1

    .line 1420
    if-eqz v2, :cond_f

    .line 1422
    :goto_5
    :try_start_1
    array-length p3, v2

    if-ge v3, p3, :cond_b

    iget-boolean p3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-nez p3, :cond_b

    .line 1423
    array-length p3, v2

    sub-int/2addr p3, v3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1424
    invoke-virtual {p2, v2, v3, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1425
    add-int/2addr v3, p3

    goto :goto_5

    .line 1433
    :cond_b
    if-eqz p2, :cond_d

    .line 1435
    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1437
    :goto_6
    goto :goto_7

    .line 1436
    :catch_0
    move-exception p1

    goto :goto_6

    .line 1433
    :catchall_0
    move-exception p1

    goto :goto_8

    .line 1427
    :catch_1
    move-exception p1

    .line 1428
    :try_start_3
    sget-boolean p3, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p3, :cond_c

    .line 1429
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1433
    :cond_c
    if-eqz p2, :cond_d

    .line 1435
    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    .line 1440
    :cond_d
    :goto_7
    array-length p1, v2

    if-eq v3, p1, :cond_10

    iget-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-nez p1, :cond_10

    .line 1441
    const-string p1, "sendMessageListingRsp: bytesWritten != outBytes.length - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    return v6

    .line 1433
    :goto_8
    if-eqz p2, :cond_e

    .line 1435
    :try_start_5
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1437
    goto :goto_9

    .line 1436
    :catch_2
    move-exception p2

    .line 1439
    :cond_e
    :goto_9
    throw p1

    .line 1446
    :cond_f
    if-eqz p2, :cond_10

    .line 1448
    :try_start_6
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1450
    goto :goto_a

    .line 1449
    :catch_3
    move-exception p1

    .line 1453
    :cond_10
    :goto_a
    return v4

    .line 1407
    :catch_4
    move-exception p1

    .line 1408
    const-string p2, "sendMessageListingRsp: IllegalArgumentException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v7, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1410
    nop

    .line 1416
    return v6

    .line 1391
    :catch_5
    move-exception p1

    .line 1392
    const-string p2, "sendMessageListingRsp: IOException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v7, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1393
    nop

    .line 1399
    iget-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz p1, :cond_12

    .line 1400
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p1, :cond_11

    .line 1401
    const-string p1, "sendMessageListingRsp Operation Aborted"

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_11
    return v4

    .line 1405
    :cond_12
    return v6
.end method

.method private setMessageStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 10

    .line 940
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusIndicator()I

    move-result v0

    .line 941
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusValue()I

    move-result p2

    .line 942
    nop

    .line 947
    const/16 v1, 0xcc

    if-nez p1, :cond_0

    .line 948
    return v1

    .line 949
    :cond_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne p2, v2, :cond_1

    .line 954
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const/16 v8, 0xd3

    const-string v9, "BluetoothMapObexServer"

    if-nez v2, :cond_3

    .line 955
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p1, :cond_2

    .line 956
    const-string p1, "Error: no mObserver!"

    invoke-static {v9, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_2
    return v8

    .line 962
    :cond_3
    :try_start_0
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getCpHandle(Ljava/lang/String;)J

    move-result-wide v2

    .line 963
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v4

    .line 964
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v5, :cond_4

    .line 965
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMessageStatus. Handle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", MsgType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 973
    :cond_4
    nop

    .line 975
    const/4 p1, 0x1

    if-ne v0, p1, :cond_6

    .line 976
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMessageStatusDeleted(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_a

    .line 978
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p1, :cond_5

    .line 979
    const-string p1, "setMessageStatusDeleted failed"

    invoke-static {v9, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_5
    return v8

    .line 983
    :cond_6
    if-nez v0, :cond_a

    .line 985
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMessageStatusRead(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 986
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p1, :cond_7

    .line 987
    const-string p1, "not able to update the message"

    invoke-static {v9, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 989
    :cond_7
    return v8

    .line 996
    :cond_8
    goto :goto_0

    .line 991
    :catch_0
    move-exception p1

    .line 992
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p2, :cond_9

    .line 993
    const-string p2, "Error in setMessageStatusRead()"

    invoke-static {v9, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 995
    :cond_9
    return v8

    .line 998
    :cond_a
    :goto_0
    const/16 p1, 0xa0

    return p1

    .line 970
    :catch_1
    move-exception p2

    .line 971
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Message type not found in handle string: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    return v1

    .line 967
    :catch_2
    move-exception p2

    .line 968
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrongly formatted message handle: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    return v1
.end method

.method private setMsgTypeFilterParams(Lcom/android/bluetooth/map/BluetoothMapAppParams;Z)V
    .locals 3

    .line 1465
    nop

    .line 1466
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    if-nez v0, :cond_0

    .line 1467
    nop

    .line 1468
    nop

    .line 1469
    const/16 v0, 0xb

    goto :goto_0

    .line 1466
    :cond_0
    const/4 v0, 0x0

    .line 1471
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-nez v1, :cond_1

    .line 1472
    or-int/lit8 v0, v0, 0x4

    .line 1473
    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    .line 1475
    :cond_1
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq v1, v2, :cond_2

    .line 1476
    or-int/lit8 v0, v0, 0x4

    .line 1478
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq v1, v2, :cond_3

    .line 1479
    or-int/lit8 v0, v0, 0x10

    .line 1482
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 1483
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterMessageType(I)V

    goto :goto_2

    .line 1485
    :cond_4
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result p2

    .line 1486
    const/4 v1, -0x1

    if-ne p2, v1, :cond_5

    .line 1487
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterMessageType(I)V

    goto :goto_2

    .line 1489
    :cond_5
    or-int/2addr p2, v0

    .line 1490
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterMessageType(I)V

    .line 1493
    :goto_2
    return-void
.end method

.method private setOwnerStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1004
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    const/16 v0, 0xd3

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object p1

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p1, v1, :cond_b

    .line 1005
    new-instance p1, Landroid/os/Bundle;

    const/4 v1, 0x5

    invoke-direct {p1, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1007
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceAvailability()I

    move-result v1

    .line 1008
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v2

    .line 1009
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivity()J

    move-result-wide v3

    .line 1010
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatState()I

    move-result v5

    .line 1011
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoIdString()Ljava/lang/String;

    move-result-object p2

    .line 1013
    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    if-ne v1, v8, :cond_0

    if-nez v2, :cond_0

    cmp-long v9, v3, v6

    if-nez v9, :cond_0

    if-ne v5, v8, :cond_0

    if-nez p2, :cond_0

    .line 1018
    const/16 p1, 0xcc

    return p1

    .line 1021
    :cond_0
    if-eq v1, v8, :cond_1

    .line 1022
    const-string v9, "PresenceState"

    invoke-virtual {p1, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1024
    :cond_1
    if-eqz v2, :cond_2

    .line 1025
    const-string v1, "PresenceStatus"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    :cond_2
    cmp-long v1, v3, v6

    if-eqz v1, :cond_3

    .line 1028
    const-string v1, "LastActive"

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1030
    :cond_3
    if-eq v5, v8, :cond_4

    if-eqz p2, :cond_4

    .line 1032
    const-string v1, "ChatState"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1033
    const-string v1, "ConversationId"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :cond_4
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 1037
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    const-string v2, "BluetoothMapObexServer"

    if-eqz v1, :cond_5

    .line 1038
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOwnerStatus in: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_5
    :try_start_0
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p2, :cond_6

    .line 1042
    const-string p2, "setOwnerStatus call()..."

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_6
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    const-string v1, "SetOwnerStatus"

    const/4 v3, 0x0

    .line 1045
    invoke-virtual {p2, v1, v3, p1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 1047
    if-eqz p1, :cond_7

    .line 1048
    const/16 p1, 0xa0

    return p1

    .line 1050
    :cond_7
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p1, :cond_8

    .line 1051
    const-string p1, "setOwnerStatus call failed"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    :cond_8
    const/16 p1, 0xd1

    return p1

    .line 1063
    :catch_0
    move-exception p1

    .line 1064
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p2, :cond_9

    .line 1065
    const-string p2, "setOwnerStatus - if uri is not known"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1067
    :cond_9
    return v0

    .line 1058
    :catch_1
    move-exception p1

    .line 1059
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p2, :cond_a

    .line 1060
    const-string p2, "setOwnerStatus - if uri or method is null"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1062
    :cond_a
    return v0

    .line 1055
    :catch_2
    move-exception p1

    .line 1056
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 1057
    return v0

    .line 1070
    :cond_b
    return v0
.end method

.method private updateInbox()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    const/16 v1, 0xd1

    if-eqz v0, :cond_a

    .line 612
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 613
    const-string v2, "inbox"

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_a

    .line 615
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccountId:J

    .line 616
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    const-string v5, "BluetoothMapObexServer"

    if-eqz v4, :cond_0

    .line 617
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateInbox inbox="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 617
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    const/4 v6, 0x2

    invoke-direct {v4, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 622
    const-wide/16 v6, -0x1

    cmp-long v6, v2, v6

    if-eqz v6, :cond_8

    .line 623
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v6, :cond_1

    .line 624
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateInbox accountId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_1
    nop

    .line 627
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v6

    .line 626
    const-string v0, "UpdateFolderId"

    invoke-virtual {v4, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 628
    const-string v0, "UpdateAccountId"

    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 638
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 639
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v2, :cond_2

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateInbox in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_2
    const/16 v0, 0xd3

    :try_start_0
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v2, :cond_3

    .line 644
    const-string v2, "updateInbox call()..."

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    const-string v3, "UpdateFolder"

    const/4 v6, 0x0

    .line 647
    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 649
    if-eqz v2, :cond_4

    .line 650
    const/16 v0, 0xa0

    return v0

    .line 652
    :cond_4
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v2, :cond_5

    .line 653
    const-string v2, "updateInbox call failed"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :cond_5
    return v1

    .line 666
    :catch_0
    move-exception v1

    .line 667
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v2, :cond_6

    .line 668
    const-string v2, "UpdateInbox - if uri is not known"

    invoke-static {v5, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    :cond_6
    return v0

    .line 660
    :catch_1
    move-exception v1

    .line 661
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v2, :cond_7

    .line 662
    const-string v2, "UpdateInbox - if uri or method is null"

    invoke-static {v5, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    :cond_7
    return v0

    .line 657
    :catch_2
    move-exception v1

    .line 658
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 659
    return v0

    .line 632
    :cond_8
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v0, :cond_9

    .line 633
    const-string v0, "updateInbox accountId=0 -> OBEX_HTTP_NOT_IMPLEMENTED"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_9
    return v1

    .line 675
    :cond_a
    return v1
.end method

.method private updateSubInfoList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 2238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2239
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    .line 2240
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 2241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSubInfoList subInfoRecordInOneSim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothMapObexServer"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2244
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 2245
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 2246
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2247
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v5, :cond_0

    .line 2248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSubInfoList name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2253
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getRemoteFeatureMask()I
    .locals 1

    .line 338
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    return v0
.end method

.method public isSrmSupported()Z
    .locals 1

    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 0

    .line 466
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p1, :cond_0

    .line 467
    const-string p1, "BluetoothMapObexServer"

    const-string p2, "onAbort(): enter."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 470
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    .line 471
    const/16 p1, 0xa0

    return p1
.end method

.method public onClose()V
    .locals 2

    .line 1126
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1127
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1128
    const/16 v1, 0x1388

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1129
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1130
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1131
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v0, :cond_0

    .line 1132
    const-string v0, "BluetoothMapObexServer"

    const-string v1, "onClose(): msg MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_1

    .line 1137
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 1138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 1141
    :cond_1
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 13

    .line 356
    const-string v0, "Exception during onConnect:"

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    const-string v2, "BluetoothMapObexServer"

    if-eqz v1, :cond_0

    .line 357
    const-string v1, "onConnect():"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapSimManager;

    invoke-direct {v1}, Lcom/android/bluetooth/map/BluetoothMapSimManager;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mSimManager:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    .line 361
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->init(Landroid/content/Context;)V

    .line 363
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v1, :cond_1

    .line 364
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 366
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    .line 368
    const-string v3, "1.0"

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMessageVersion:Ljava/lang/String;

    .line 369
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 370
    nop

    .line 372
    const/16 v3, 0xd0

    const/16 v4, 0x46

    :try_start_0
    invoke-virtual {p1, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 373
    const/16 v6, 0xfa

    invoke-virtual {p1, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 374
    const/16 v8, 0xc6

    if-nez v5, :cond_2

    .line 375
    return v8

    .line 377
    :cond_2
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v9, :cond_3

    .line 378
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onConnect(): uuid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_3
    array-length v9, v5

    const/16 v10, 0x10

    if-eq v9, v10, :cond_4

    .line 382
    const-string p1, "Wrong UUID length"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return v8

    .line 385
    :cond_4
    move v9, v1

    :goto_0
    if-ge v9, v10, :cond_6

    .line 386
    aget-byte v11, v5, v9

    sget-object v12, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MAP_TARGET:[B

    aget-byte v12, v12, v9

    if-eq v11, v12, :cond_5

    .line 387
    const-string p1, "Wrong UUID"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return v8

    .line 385
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 391
    :cond_6
    const/16 v8, 0x4a

    invoke-virtual {p2, v8, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 395
    nop

    .line 398
    :try_start_1
    invoke-virtual {p1, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 399
    if-eqz p1, :cond_8

    .line 400
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v5, :cond_7

    .line 401
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onConnect(): remote="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_7
    invoke-virtual {p2, v4, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 405
    :cond_8
    const/4 p1, 0x1

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v7, 0x534c5349

    cmp-long v4, v4, v7

    if-nez v4, :cond_9

    .line 409
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    .line 410
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v6, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 416
    :cond_9
    nop

    .line 418
    iget p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    const/16 v0, 0x200

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_a

    .line 420
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    .line 423
    :cond_a
    iget p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    const/16 p2, 0x100

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_b

    .line 425
    const-string p1, "1.1"

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMessageVersion:Ljava/lang/String;

    .line 428
    :cond_b
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz p1, :cond_c

    .line 429
    const-string p1, "onConnect(): uuid is ok, will send out MSG_SESSION_ESTABLISHED msg."

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_c
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz p1, :cond_d

    .line 433
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p1

    .line 434
    const/16 p2, 0x1389

    iput p2, p1, Landroid/os/Message;->what:I

    .line 435
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 438
    :cond_d
    const/16 p1, 0xa0

    return p1

    .line 412
    :catch_0
    move-exception p1

    .line 413
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    .line 415
    return v3

    .line 392
    :catch_1
    move-exception p1

    .line 393
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    return v3
.end method

.method public onDelete(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 6

    .line 1968
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    const-string v0, "BluetoothMapObexServer"

    if-eqz p2, :cond_0

    .line 1969
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDelete() "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    .line 1972
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 1975
    const/4 p2, 0x0

    .line 1979
    const/16 v1, 0x42

    const/16 v2, 0xa0

    const/16 v3, 0xc0

    :try_start_0
    invoke-virtual {p1, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1981
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1982
    const/16 v5, 0x4c

    invoke-virtual {p1, v5}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 1983
    if-eqz p1, :cond_1

    .line 1984
    new-instance p2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {p2, p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>([B)V

    .line 1986
    :cond_1
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p1, :cond_2

    .line 1987
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", name = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    :cond_2
    const-string p1, "x-bt/MAP-notification-filter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1990
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz p1, :cond_3

    .line 1991
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TYPE_SET_NOTIFICATION_FILTER: NotificationFilter: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1992
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationFilter()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1991
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationFilter()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setNotificationFilter(J)V

    .line 1995
    return v2

    .line 1996
    :cond_4
    const-string p1, "x-bt/participant"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1997
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz p1, :cond_5

    .line 1998
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TYPE_SET_OWNER_STATUS: PresenceAvailability "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1999
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceAvailability()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", PresenceStatus: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", LastActivity: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2001
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivityString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ChatStatus: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2002
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatState()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ChatStatusConvoId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2003
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoIdString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1998
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    :cond_5
    invoke-direct {p0, v4, p2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->setOwnerStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 2028
    :cond_6
    nop

    .line 2029
    return v3

    .line 2016
    :catch_0
    move-exception p1

    .line 2018
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    const-string v1, "Exception occured while handling request"

    if-eqz p2, :cond_7

    .line 2019
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2021
    :cond_7
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    :goto_0
    iget-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz p1, :cond_8

    .line 2024
    return v2

    .line 2026
    :cond_8
    return v3

    .line 2008
    :catch_1
    move-exception p1

    .line 2011
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2014
    goto :goto_1

    .line 2012
    :catch_2
    move-exception p1

    .line 2015
    :goto_1
    return v3
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 2

    .line 443
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    const-string v1, "BluetoothMapObexServer"

    if-eqz v0, :cond_0

    .line 444
    const-string v0, "onDisconnect(): enter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mSimManager:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->unregisterReceiver()V

    .line 449
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v0, :cond_1

    .line 450
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 452
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 453
    const/16 p1, 0xa0

    iput p1, p2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 454
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 455
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p1

    .line 456
    const/16 p2, 0x138a

    iput p2, p1, Landroid/os/Message;->what:I

    .line 457
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 458
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz p1, :cond_2

    .line 459
    const-string p1, "onDisconnect(): msg MSG_SESSION_DISCONNECTED sent out."

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_2
    return-void
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .locals 17

    .line 1145
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Exception:"

    const-string v4, "BluetoothMapObexServer"

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 1146
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    .line 1150
    nop

    .line 1151
    nop

    .line 1153
    const/16 v5, 0xc0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 1154
    const/16 v8, 0x42

    :try_start_1
    invoke-virtual {v7, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1156
    const/16 v9, 0x4c

    invoke-virtual {v7, v9}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 1157
    if-eqz v9, :cond_0

    .line 1158
    :try_start_2
    new-instance v10, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v10, v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_0

    .line 1260
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v11, v3

    goto/16 :goto_a

    .line 1257
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v11, v3

    goto/16 :goto_6

    .line 1157
    :cond_0
    const/4 v10, 0x0

    .line 1161
    :goto_0
    :try_start_3
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    if-eqz v9, :cond_1

    .line 1162
    :try_start_4
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 1164
    :cond_1
    :try_start_5
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    if-eqz v9, :cond_2

    .line 1165
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OnGet type is "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_2
    if-nez v8, :cond_4

    .line 1169
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v2, :cond_3

    .line 1170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type is null?"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1172
    :cond_3
    return v5

    .line 1175
    :cond_4
    :try_start_7
    const-string v9, "x-obex/folder-listing"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    const-string v11, ", ListStartOffset = "

    if-eqz v9, :cond_6

    .line 1176
    :try_start_8
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v7, :cond_5

    if-eqz v10, :cond_5

    .line 1177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TYPE_GET_FOLDER_LISTING: MaxListCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1177
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_5
    invoke-direct {v1, v2, v10}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendFolderListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v1
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    return v1

    .line 1183
    :cond_6
    :try_start_9
    const-string v9, "x-bt/MAP-msg-listing"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    const-string v12, "FilterRecipient = "

    const-string v13, ", MaxListCount = "

    const-string v15, " failed"

    const-string v6, "Storage locked, "

    const/4 v5, 0x1

    if-eqz v9, :cond_b

    .line 1184
    :try_start_a
    invoke-virtual {v7, v5}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1185
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v7, :cond_9

    if-eqz v10, :cond_9

    .line 1186
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TYPE_GET_MESSAGE_LISTING: folder name is: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1186
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SubjectLength = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getSubjectLength()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", ParameterMask = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    move-object/from16 v16, v15

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v14

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1189
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FilterMessageType = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FilterPeriodBegin = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBeginString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", FilterPeriodEnd = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEndString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", FilterReadStatus = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1193
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", FilterOriginator = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1196
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FilterPriority = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMsgHandle()J

    move-result-wide v11

    .line 1200
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FilterMsgHandle = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 1201
    const-wide/16 v13, -0x1

    cmp-long v13, v11, v13

    const-string v14, ""

    if-nez v13, :cond_7

    move-object v11, v14

    goto :goto_1

    .line 1202
    :cond_7
    :try_start_b
    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    :goto_1
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1200
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v7

    .line 1204
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FilterConvoId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_8

    goto :goto_2

    .line 1205
    :cond_8
    invoke-virtual {v7}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    :goto_2
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1204
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1185
    :cond_9
    move-object/from16 v16, v15

    .line 1207
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->isUserUnlocked()Z

    move-result v7

    if-nez v7, :cond_a

    .line 1208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v16

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const/16 v1, 0xd3

    return v1

    .line 1212
    :cond_a
    invoke-direct {v1, v2, v10, v5}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendMessageListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/text/ParseException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    return v1

    .line 1214
    :cond_b
    move-object v14, v15

    :try_start_c
    const-string v15, "x-bt/MAP-convo-listing"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 1215
    invoke-virtual {v7, v5}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1216
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    if-eqz v7, :cond_c

    if-eqz v10, :cond_c

    .line 1217
    :try_start_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TYPE_GET_CONVO_LISTING: name is"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1217
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FilterLastActivityBegin = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1220
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FilterLastActivityEnd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/text/ParseException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    move-object v11, v3

    :try_start_e
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FilterReadStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1216
    :cond_c
    move-object v11, v3

    .line 1226
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->isUserUnlocked()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/text/ParseException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 1228
    const/16 v1, 0xd3

    return v1

    .line 1231
    :cond_d
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_f
    invoke-direct {v1, v2, v10, v5}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendConvoListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1263
    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_7

    .line 1232
    :cond_e
    move-object v11, v3

    const-string v3, "x-bt/MASInstanceInformation"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1233
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v3, :cond_f

    if-eqz v10, :cond_f

    .line 1234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TYPE_MESSAGE (GET): MASInstandeId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMasInstanceId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1234
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_f
    invoke-direct {v1, v2, v10}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendMASInstanceInformationRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v1

    return v1

    .line 1239
    :cond_10
    const-string v3, "x-bt/message"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1240
    invoke-virtual {v7, v5}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1241
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v5, :cond_11

    if-eqz v10, :cond_11

    .line 1242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TYPE_MESSAGE (GET): name is"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", Attachment = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Charset = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", FractionRequest = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1242
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->isUserUnlocked()Z

    move-result v5

    if-nez v5, :cond_12

    .line 1247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    const/16 v1, 0xd3

    return v1

    .line 1251
    :cond_12
    iget-object v5, v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMessageVersion:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v10, v5}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendGetMessageRsp(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1253
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown type request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/text/ParseException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    .line 1254
    const/16 v1, 0xc6

    return v1

    .line 1260
    :catch_3
    move-exception v0

    goto :goto_9

    .line 1257
    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v11, v3

    :goto_5
    move-object v2, v0

    :goto_6
    const/16 v1, 0xcc

    goto :goto_b

    .line 1263
    :catch_6
    move-exception v0

    :goto_7
    move-object v2, v0

    .line 1264
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    const-string v5, "Exception occured while handling request"

    if-eqz v3, :cond_14

    .line 1265
    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1267
    :cond_14
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :goto_8
    iget-boolean v1, v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v1, :cond_16

    .line 1270
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v1, :cond_15

    .line 1271
    const-string v1, "onGet Operation Aborted"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_15
    const/16 v1, 0xa0

    return v1

    .line 1275
    :cond_16
    const/16 v1, 0xc0

    return v1

    .line 1260
    :catch_7
    move-exception v0

    move-object v11, v3

    :goto_9
    move-object v1, v0

    .line 1261
    :goto_a
    invoke-static {v4, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1262
    const/16 v1, 0xcc

    return v1

    .line 1257
    :catch_8
    move-exception v0

    move-object v11, v3

    const/16 v1, 0xcc

    move-object v2, v0

    .line 1258
    :goto_b
    invoke-static {v4, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1259
    return v1
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 16

    .line 481
    move-object/from16 v8, p0

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    const-string v9, "BluetoothMapObexServer"

    if-eqz v0, :cond_0

    .line 482
    const-string v0, "onPut(): enter"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    .line 485
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 486
    nop

    .line 489
    const/4 v0, 0x0

    .line 492
    const/16 v10, 0xa0

    const/16 v11, 0xc0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v1

    .line 493
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v2, :cond_1

    .line 494
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 496
    :cond_1
    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 497
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 498
    const/16 v5, 0x4c

    invoke-virtual {v1, v5}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 499
    if-eqz v1, :cond_2

    .line 500
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>([B)V

    .line 502
    :cond_2
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v1, :cond_3

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", name = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_3
    const-string v1, "x-bt/MAP-messageUpdate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 506
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v0, :cond_4

    .line 507
    const-string v0, "TYPE_MESSAGE_UPDATE:"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->updateInbox()I

    move-result v0

    return v0

    .line 510
    :cond_5
    const-string v1, "x-bt/MAP-NotificationRegistration"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 511
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v1, :cond_6

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TYPE_SET_NOTIFICATION_REGISTRATION: NotificationStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 512
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_6
    iget-object v1, v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setNotificationRegistration(I)I

    move-result v0

    return v0

    .line 516
    :cond_7
    const-string v1, "x-bt/MAP-notification-filter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0xd3

    const-string v6, " failed"

    const-string v7, "Storage locked, "

    if-eqz v1, :cond_a

    .line 517
    :try_start_1
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v1, :cond_8

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE_SET_NOTIFICATION_FILTER: NotificationFilter: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationFilter()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->isUserUnlocked()Z

    move-result v1

    if-nez v1, :cond_9

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return v5

    .line 525
    :cond_9
    iget-object v1, v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationFilter()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setNotificationFilter(J)V

    .line 526
    return v10

    .line 527
    :cond_a
    const-string v1, "x-bt/messageStatus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 528
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v1, :cond_b

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE_SET_MESSAGE_STATUS: StatusIndicator: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusIndicator()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", StatusValue: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ExtentedData: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->isUserUnlocked()Z

    move-result v1

    if-nez v1, :cond_c

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return v5

    .line 538
    :cond_c
    invoke-direct {v8, v4, v0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->setMessageStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v0

    return v0

    .line 539
    :cond_d
    const-string v1, "x-bt/message"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 540
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v1, :cond_e

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TYPE_MESSAGE: Transparet: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", retry: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", charset: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 541
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_e
    iget-object v1, v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mSimManager:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->getSubCount()I

    move-result v1

    if-nez v1, :cond_f

    .line 549
    const-wide/16 v12, -0x1

    goto :goto_0

    .line 550
    :cond_f
    iget-object v1, v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mSimManager:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->getSubCount()I

    move-result v1

    if-ne v1, v3, :cond_10

    .line 551
    iget-object v1, v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mSimManager:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->getSingleSubId()J

    move-result-wide v12

    goto :goto_0

    .line 554
    :cond_10
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v1

    .line 555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[onPut] Settings messageSubId = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v3, -0x1

    if-eq v1, v3, :cond_14

    int-to-long v12, v1

    const-wide/16 v14, -0x2

    cmp-long v3, v12, v14

    if-nez v3, :cond_11

    goto :goto_1

    .line 560
    :cond_11
    const/4 v3, -0x3

    if-ne v1, v3, :cond_12

    .line 561
    iget-object v5, v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMessageVersion:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->pushMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;Z)I

    move-result v0

    return v0

    .line 563
    :cond_12
    nop

    .line 566
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onPut] pushMessageGemini subId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->isUserUnlocked()Z

    move-result v1

    if-nez v1, :cond_13

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return v5

    .line 572
    :cond_13
    iget-object v5, v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMessageVersion:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v0

    move-wide v6, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->pushMessageGemini(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;J)I

    move-result v0

    return v0

    .line 559
    :cond_14
    :goto_1
    iget-object v5, v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMessageVersion:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->pushMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;Z)I

    move-result v0

    return v0

    .line 574
    :cond_15
    const-string v1, "x-bt/participant"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 575
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v1, :cond_16

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TYPE_SET_OWNER_STATUS: PresenceAvailability "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceAvailability()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", PresenceStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", LastActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivityString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ChatStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ChatStatusConvoId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoIdString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 576
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_16
    invoke-direct {v8, v4, v0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->setOwnerStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 606
    :cond_17
    nop

    .line 607
    return v11

    .line 594
    :catch_0
    move-exception v0

    .line 596
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    const-string v2, "Exception occured while handling request"

    if-eqz v1, :cond_18

    .line 597
    invoke-static {v9, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 599
    :cond_18
    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :goto_2
    iget-boolean v0, v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v0, :cond_19

    .line 602
    return v10

    .line 604
    :cond_19
    return v11

    .line 586
    :catch_1
    move-exception v0

    .line 589
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 592
    goto :goto_3

    .line 590
    :catch_2
    move-exception v0

    .line 593
    :goto_3
    return v11
.end method

.method public onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .locals 3

    .line 1078
    const-string p2, "BluetoothMapObexServer"

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 1080
    const/4 v0, 0x1

    const/16 v1, 0xc0

    :try_start_0
    invoke-virtual {p1, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    nop

    .line 1090
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v2, :cond_0

    .line 1091
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 1093
    :cond_0
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz p1, :cond_1

    .line 1094
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetPath name is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " backup: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " create: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_1
    if-eqz p3, :cond_3

    .line 1099
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1100
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    goto :goto_0

    .line 1102
    :cond_2
    return v1

    .line 1106
    :cond_3
    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 1111
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object p1

    .line 1112
    if-eqz p1, :cond_5

    .line 1113
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    goto :goto_2

    .line 1115
    :cond_5
    return v1

    .line 1107
    :cond_6
    :goto_1
    if-nez p3, :cond_7

    .line 1108
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 1118
    :cond_7
    :goto_2
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz p1, :cond_8

    .line 1119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Current Folder: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_8
    const/16 p1, 0xa0

    return p1

    .line 1081
    :catch_0
    move-exception p1

    .line 1082
    sget-boolean p3, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    const-string p4, "request headers error"

    if-eqz p3, :cond_9

    .line 1083
    invoke-static {p2, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1085
    :cond_9
    invoke-static {p2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :goto_3
    return v1
.end method

.method public setRemoteFeatureMask(I)V
    .locals 3

    .line 342
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    const-string v1, "BluetoothMapObexServer"

    if-eqz v0, :cond_0

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRemoteFeatureMask() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    .line 346
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setRemoteFeatureMask(I)V

    .line 347
    const/16 v0, 0x100

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    .line 349
    const-string p1, "1.1"

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMessageVersion:Ljava/lang/String;

    .line 351
    :cond_1
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " setRemoteFeatureMask mMessageVersion :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMessageVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_2
    return-void
.end method

.method public showSubSelectDialog(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;)V
    .locals 13

    .line 2187
    move-object v9, p0

    const-string v0, "BluetoothMapObexServer"

    const-string v1, "[showSubSelectDialog] enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    nop

    .line 2190
    nop

    .line 2191
    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getRecipients()Ljava/util/ArrayList;

    move-result-object v1

    .line 2192
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v2, :cond_0

    .line 2193
    nop

    .line 2194
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->getPhoneNumber()[Ljava/lang/String;

    move-result-object v1

    .line 2195
    if-eqz v1, :cond_1

    array-length v5, v1

    if-ne v5, v2, :cond_1

    .line 2196
    aget-object v4, v1, v3

    goto :goto_0

    .line 2199
    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v1, :cond_2

    .line 2200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[showSubSelectDialog] isSingleRecipient = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " recipentNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->updateSubInfoList()Ljava/util/List;

    move-result-object v2

    .line 2206
    new-instance v10, Lcom/android/bluetooth/map/BluetoothMapSubAdapter;

    iget-object v0, v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0, v2}, Lcom/android/bluetooth/map/BluetoothMapSubAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 2207
    new-instance v11, Landroid/app/AlertDialog$Builder;

    iget-object v0, v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2208
    iget-object v0, v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0078

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2209
    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2210
    new-instance v12, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;

    move-object v0, v12

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;-><init>(Lcom/android/bluetooth/map/BluetoothMapObexServer;Ljava/util/List;Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;)V

    invoke-virtual {v11, v10, v12}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2226
    const/high16 v0, 0x1040000

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapObexServer$4;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer$4;-><init>(Lcom/android/bluetooth/map/BluetoothMapObexServer;)V

    invoke-virtual {v11, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2232
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2233
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7f6

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 2234
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2235
    return-void
.end method
