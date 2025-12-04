.class Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;
.super Ljava/lang/Object;
.source "BrowsedPlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowserSubscriptionCallback;,
        Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;,
        Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$TimeoutHandler;,
        Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaConnectionCallback;,
        Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;,
        Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$PlaybackCallback;,
        Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$ConnectionCallback;,
        Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$ConnectionState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final NUM_CACHED_FOLDERS:I = 0x5

.field public static final STATUS_CONN_ERROR:I = 0x1

.field public static final STATUS_LOOKUP_ERROR:I = 0x2

.field public static final STATUS_PLAYBACK_TIMEOUT_ERROR:I = 0x3

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AvrcpBrowsedPlayerWrapper"


# instance fields
.field mCachedFolders:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/avrcp/ListItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$ConnectionCallback;

.field private final mCallbackLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final mLooper:Landroid/os/Looper;

.field private final mPackageName:Ljava/lang/String;

.field private mRoot:Ljava/lang/String;

.field private mWrappedBrowser:Lcom/android/bluetooth/avrcp/MediaBrowser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    nop

    .line 44
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->DEBUG:Z

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mCallbackLock:Ljava/lang/Object;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mRoot:Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$1;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$1;-><init>(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;I)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mCachedFolders:Ljava/util/LinkedHashMap;

    .line 110
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mContext:Landroid/content/Context;

    .line 111
    iput-object p3, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mPackageName:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mLooper:Landroid/os/Looper;

    .line 113
    new-instance p2, Landroid/content/ComponentName;

    invoke-direct {p2, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaConnectionCallback;

    invoke-direct {p3, p0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaConnectionCallback;-><init>(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)V

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/MediaBrowserFactory;->make(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/bluetooth/avrcp/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)Lcom/android/bluetooth/avrcp/MediaBrowser;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mWrappedBrowser:Lcom/android/bluetooth/avrcp/MediaBrowser;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mRoot:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mRoot:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)Lcom/android/bluetooth/avrcp/MediaBrowser;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mWrappedBrowser:Lcom/android/bluetooth/avrcp/MediaBrowser;

    return-object p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->DEBUG:Z

    return v0
.end method

.method private getFolderItemsInternal(Ljava/lang/String;Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;)Z
    .locals 2

    .line 268
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFolderItemsInternal: mediaID = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AvrcpBrowsedPlayerWrapper"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 p1, 0x0

    return p1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mWrappedBrowser:Lcom/android/bluetooth/avrcp/MediaBrowser;

    new-instance v1, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowserSubscriptionCallback;

    invoke-direct {v1, p0, p2}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowserSubscriptionCallback;-><init>(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/avrcp/MediaBrowser;->subscribe(Ljava/lang/String;Lcom/android/bluetooth/avrcp/MediaBrowser$SubscriptionCallback;)V

    .line 274
    const/4 p1, 0x1

    return p1
.end method

.method static wrap(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrapping Media Browser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpBrowsedPlayerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-object v0
.end method


# virtual methods
.method clearCallback()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$ConnectionCallback;

    .line 191
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    sget-boolean v0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AvrcpBrowsedPlayerWrapper"

    const-string v1, "mCallback = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    return-void

    .line 191
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method connect(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$ConnectionCallback;)Z
    .locals 2

    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect: Trying to connect to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "with null callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpBrowsedPlayerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    new-instance v0, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsedPlayerWrapper$XHW8c-wILRxvIsQnQko2h56-3JU;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsedPlayerWrapper$XHW8c-wILRxvIsQnQko2h56-3JU;-><init>(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$ConnectionCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->setCallbackAndConnect(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$ConnectionCallback;)Z

    move-result p1

    return p1
.end method

.method disconnect()V
    .locals 2

    .line 157
    sget-boolean v0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect: Disconnecting from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpBrowsedPlayerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mWrappedBrowser:Lcom/android/bluetooth/avrcp/MediaBrowser;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/MediaBrowser;->disconnect()V

    .line 159
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->clearCallback()V

    .line 160
    return-void
.end method

.method executeCallback(ILcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$ConnectionCallback;

    if-nez v1, :cond_0

    .line 179
    const-string p1, "AvrcpBrowsedPlayerWrapper"

    const-string p2, "Callback is NULL. Cannot execute"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    monitor-exit v0

    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$ConnectionCallback;

    .line 183
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    sget-boolean v0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "AvrcpBrowsedPlayerWrapper"

    const-string v2, "Executing callback"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    invoke-interface {v1, p1, p2}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$ConnectionCallback;->run(ILcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)V

    .line 186
    return-void

    .line 183
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getFolderItems(Ljava/lang/String;Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;)Z
    .locals 3

    .line 250
    const-string v0, "AvrcpBrowsedPlayerWrapper"

    if-nez p2, :cond_0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFolderItems: Trying to connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "with null browse callback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    sget-boolean v1, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFolderItems: Connecting to browsable player: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_1
    new-instance v0, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsedPlayerWrapper$ZQfrcP6Q-FZjlAbeV7hnhKJjx00;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsedPlayerWrapper$ZQfrcP6Q-FZjlAbeV7hnhKJjx00;-><init>(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->setCallbackAndConnect(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$ConnectionCallback;)Z

    move-result p1

    return p1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRootId()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mRoot:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic lambda$connect$0$BrowsedPlayerWrapper(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$ConnectionCallback;ILcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)V
    .locals 0

    .line 145
    invoke-interface {p1, p2, p3}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$ConnectionCallback;->run(ILcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->disconnect()V

    .line 147
    return-void
.end method

.method public synthetic lambda$getFolderItems$3$BrowsedPlayerWrapper(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;Ljava/lang/String;ILcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)V
    .locals 1

    .line 257
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFolderItems: Connected to browsable player: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "AvrcpBrowsedPlayerWrapper"

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    if-eqz p3, :cond_0

    .line 259
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ""

    invoke-interface {p1, p3, v0, p4}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;->run(ILjava/lang/String;Ljava/util/List;)V

    .line 261
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->getFolderItemsInternal(Ljava/lang/String;Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$BrowseCallback;)Z

    .line 262
    return-void
.end method

.method public synthetic lambda$playItem$1$BrowsedPlayerWrapper(I)V
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playItem: Media item playback returned, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AvrcpBrowsedPlayerWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->disconnect()V

    .line 223
    return-void
.end method

.method public synthetic lambda$playItem$2$BrowsedPlayerWrapper(Ljava/lang/String;ILcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)V
    .locals 3

    .line 212
    sget-boolean p2, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->DEBUG:Z

    const-string v0, "AvrcpBrowsedPlayerWrapper"

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playItem: Connected to browsable player "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mContext:Landroid/content/Context;

    iget-object p3, p3, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mWrappedBrowser:Lcom/android/bluetooth/avrcp/MediaBrowser;

    .line 214
    invoke-virtual {p3}, Lcom/android/bluetooth/avrcp/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p3

    .line 213
    invoke-static {p2, p3}, Lcom/android/bluetooth/avrcp/MediaControllerFactory;->make(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)Lcom/android/bluetooth/avrcp/MediaController;

    move-result-object p2

    .line 215
    invoke-virtual {p2}, Lcom/android/bluetooth/avrcp/MediaController;->getTransportControls()Lcom/android/bluetooth/avrcp/MediaController$TransportControls;

    move-result-object p3

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playItem: Playing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 219
    new-instance p1, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;

    iget-object p3, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mLooper:Landroid/os/Looper;

    invoke-direct {p1, p0, p3, p2}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;-><init>(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;Landroid/os/Looper;Lcom/android/bluetooth/avrcp/MediaController;)V

    .line 220
    new-instance p2, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsedPlayerWrapper$BeiN_jBR2IYR5otim-y1iH-r98A;

    invoke-direct {p2, p0}, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsedPlayerWrapper$BeiN_jBR2IYR5otim-y1iH-r98A;-><init>(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)V

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$MediaPlaybackListener;->waitForPlayback(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$PlaybackCallback;)V

    .line 224
    return-void
.end method

.method public playItem(Ljava/lang/String;)Z
    .locals 2

    .line 210
    sget-boolean v0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playItem: Play item from media ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpBrowsedPlayerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    new-instance v0, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsedPlayerWrapper$j-Kal39dYJXRPL8pJIZDsdvePl0;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsedPlayerWrapper$j-Kal39dYJXRPL8pJIZDsdvePl0;-><init>(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->setCallbackAndConnect(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$ConnectionCallback;)Z

    move-result p1

    return p1
.end method

.method setCallbackAndConnect(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$ConnectionCallback;)Z
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$ConnectionCallback;

    if-eqz v1, :cond_0

    .line 165
    const-string p1, "AvrcpBrowsedPlayerWrapper"

    const-string v1, "setCallbackAndConnect: Already trying to connect to "

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 168
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mCallback:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$ConnectionCallback;

    .line 169
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    sget-boolean p1, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->DEBUG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Set mCallback, connecting to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AvrcpBrowsedPlayerWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mWrappedBrowser:Lcom/android/bluetooth/avrcp/MediaBrowser;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/MediaBrowser;->connect()V

    .line 172
    const/4 p1, 0x1

    return p1

    .line 169
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Browsable Package Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v1, "   Cached Media ID\'s: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->mCachedFolders:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 470
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    goto :goto_0

    .line 472
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
