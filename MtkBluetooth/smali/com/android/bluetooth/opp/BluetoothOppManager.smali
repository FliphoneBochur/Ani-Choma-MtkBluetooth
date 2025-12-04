.class public Lcom/android/bluetooth/opp/BluetoothOppManager;
.super Ljava/lang/Object;
.source "BluetoothOppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;
    }
.end annotation


# static fields
.field private static final ALLOWED_INSERT_SHARE_THREAD_NUMBER:I = 0x3

.field private static final ARRAYLIST_ITEM_SEPERATOR:Ljava/lang/String; = ";"

.field private static final FILE_URI:Ljava/lang/String; = "FILE_URI"

.field private static final FILE_URIS:Ljava/lang/String; = "FILE_URIS"

.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static final MIME_TYPE:Ljava/lang/String; = "MIMETYPE"

.field private static final MIME_TYPE_MULTIPLE:Ljava/lang/String; = "MIMETYPE_MULTIPLE"

.field private static final MULTIPLE_FLAG:Ljava/lang/String; = "MULTIPLE_FLAG"

.field private static final OPP_PREFERENCE_FILE:Ljava/lang/String; = "OPPMGR"

.field private static final SENDING_FLAG:Ljava/lang/String; = "SENDINGFLAG"

.field private static final TAG:Ljava/lang/String; = "BluetoothOppManager"

.field private static final V:Z

.field private static final WHITELIST_DURATION_MS:I = 0x3a98

.field private static sInstance:Lcom/android/bluetooth/opp/BluetoothOppManager;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mFileNumInBatch:I

.field private mInitialized:Z

.field private mInsertShareThreadNum:I

.field private mIsHandoverInitiated:Z

.field private mMimeTypeOfSendingFile:Ljava/lang/String;

.field private mMimeTypeOfSendingFiles:Ljava/lang/String;

.field public mMultipleFlag:Z

.field public mSendingFlag:Z

.field private mUriOfSendingFile:Ljava/lang/String;

.field private mUrisOfSendingFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->V:Z

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mWhitelist:Ljava/util/List;

    return-void
.end method

.method static synthetic access$008(Lcom/android/bluetooth/opp/BluetoothOppManager;)I
    .locals 2

    .line 60
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/bluetooth/opp/BluetoothOppManager;)I
    .locals 2

    .line 60
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 60
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->V:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppManager;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private cleanupWhitelist()V
    .locals 8

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 162
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 164
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3a98

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 165
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppManager;->V:Z

    if-eqz v4, :cond_0

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning out whitelist entry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BluetoothOppManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 170
    :cond_1
    goto :goto_0

    .line 171
    :cond_2
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;
    .locals 2

    .line 124
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppManager;->sInstance:Lcom/android/bluetooth/opp/BluetoothOppManager;

    if-nez v1, :cond_0

    .line 126
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-direct {v1}, Lcom/android/bluetooth/opp/BluetoothOppManager;-><init>()V

    sput-object v1, Lcom/android/bluetooth/opp/BluetoothOppManager;->sInstance:Lcom/android/bluetooth/opp/BluetoothOppManager;

    .line 128
    :cond_0
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppManager;->sInstance:Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->init(Landroid/content/Context;)Z

    .line 130
    sget-object p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->sInstance:Lcom/android/bluetooth/opp/BluetoothOppManager;

    monitor-exit v0

    return-object p0

    .line 131
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private init(Landroid/content/Context;)Z
    .locals 2

    .line 138
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 139
    return v1

    .line 141
    :cond_0
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInitialized:Z

    .line 143
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    .line 145
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 146
    if-nez p1, :cond_1

    .line 147
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppManager;->V:Z

    if-eqz p1, :cond_1

    .line 148
    const-string p1, "BluetoothOppManager"

    const-string v0, "BLUETOOTH_SERVICE is not started! "

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->restoreApplicationData()V

    .line 155
    return v1
.end method

.method private restoreApplicationData()V
    .locals 7

    .line 201
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const-string v1, "OPPMGR"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    const-string v3, "SENDINGFLAG"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    .line 205
    const-string v3, "MIMETYPE"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    .line 206
    const-string v3, "FILE_URI"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    .line 207
    const-string v3, "MIMETYPE_MULTIPLE"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFiles:Ljava/lang/String;

    .line 208
    const-string v3, "MULTIPLE_FLAG"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    .line 210
    sget-boolean v3, Lcom/android/bluetooth/opp/BluetoothOppManager;->V:Z

    const-string v5, "BluetoothOppManager"

    if-eqz v3, :cond_0

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreApplicationData! "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    const-string v3, "FILE_URIS"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    .line 217
    if-eqz v0, :cond_2

    .line 218
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 219
    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 220
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    aget-object v6, v0, v3

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppManager;->V:Z

    if-eqz v4, :cond_1

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uri in batch:  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v3

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 228
    return-void
.end method

.method private storeApplicationData()V
    .locals 8

    .line 234
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    .line 235
    const-string v1, "OPPMGR"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 236
    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    const-string v3, "SENDINGFLAG"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 237
    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    const-string v3, "MULTIPLE_FLAG"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 238
    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    const-string v3, "FILE_URIS"

    const-string v4, "MIMETYPE_MULTIPLE"

    const-string v5, "FILE_URI"

    const-string v6, "MIMETYPE"

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFiles:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_0

    .line 242
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 243
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 249
    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    goto :goto_1

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 259
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->V:Z

    if-eqz v0, :cond_2

    .line 260
    const-string v0, "BluetoothOppManager"

    const-string v1, "Application data stored to SharedPreference! "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized addToWhitelist(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 174
    if-nez p1, :cond_0

    .line 175
    monitor-exit p0

    return-void

    .line 178
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mWhitelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 180
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 183
    :cond_1
    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mWhitelist:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method cleanUpSendingFileInfo()V
    .locals 3

    .line 522
    monitor-enter p0

    .line 523
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->V:Z

    if-eqz v0, :cond_0

    .line 524
    const-string v0, "BluetoothOppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanUpSendingFileInfo: mMultipleFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 528
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    goto :goto_1

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 531
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 532
    goto :goto_0

    .line 529
    :cond_2
    :goto_1
    nop

    .line 534
    :cond_3
    monitor-exit p0

    .line 535
    return-void

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disableBluetooth()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 332
    :cond_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 323
    :cond_0
    return-void
.end method

.method public getBatchSize()I
    .locals 1

    .line 355
    monitor-enter p0

    .line 356
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mFileNumInBatch:I

    monitor-exit p0

    return v0

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1

    .line 338
    nop

    .line 340
    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 342
    if-nez v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 340
    :cond_0
    const/4 v0, 0x0

    .line 347
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 348
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const v0, 0x7f0e0093

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_2
    return-object v0
.end method

.method public isEnabled()Z
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0

    .line 309
    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->V:Z

    if-eqz v0, :cond_1

    .line 310
    const-string v0, "BluetoothOppManager"

    const-string v1, "BLUETOOTH_SERVICE is not available! "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isWhitelisted(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 188
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->cleanupWhitelist()V

    .line 189
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mWhitelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 190
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 191
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 193
    :cond_0
    goto :goto_0

    .line 194
    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 187
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public saveSendingFileInfo(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 266
    monitor-enter p0

    .line 267
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    .line 268
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    .line 269
    iput-boolean p3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mIsHandoverInitiated:Z

    .line 270
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 271
    iget-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    .line 272
    invoke-static {p3, p2, p1, p4}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->generateFileInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object p1

    .line 274
    invoke-static {p2, p1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->generateUri(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)Landroid/net/Uri;

    move-result-object p2

    .line 275
    invoke-static {p2, p1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->putSendFileInfo(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)V

    .line 276
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    .line 277
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->storeApplicationData()V

    .line 278
    monitor-exit p0

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public saveSendingFileInfo(Ljava/lang/String;Ljava/util/ArrayList;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 283
    monitor-enter p0

    .line 284
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    .line 285
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFiles:Ljava/lang/String;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    .line 287
    iput-boolean p3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mIsHandoverInitiated:Z

    .line 288
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 289
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    .line 290
    invoke-static {v1, v0, p1, p4}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->generateFileInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v1

    .line 292
    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->generateUri(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)Landroid/net/Uri;

    move-result-object v0

    .line 293
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->putSendFileInfo(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)V

    .line 295
    goto :goto_0

    .line 296
    :cond_0
    invoke-static {p2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->putUnstartedSendUris(Ljava/util/ArrayList;)V

    .line 297
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->storeApplicationData()V

    .line 298
    monitor-exit p0

    .line 299
    return-void

    .line 298
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startTransfer(Landroid/bluetooth/BluetoothDevice;)V
    .locals 10

    .line 365
    monitor-enter p0

    .line 366
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->V:Z

    if-eqz v0, :cond_0

    .line 367
    const-string v0, "BluetoothOppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Active InsertShareThread number is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mIsHandoverInitiated:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    const-string p1, "BluetoothOppManager"

    const-string v0, "BT is OFF when start handover transfer"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    monitor-exit p0

    return-void

    .line 374
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 376
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->removeUnstartedSendUris()V

    .line 377
    monitor-enter p0

    .line 378
    :try_start_1
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 379
    const-string p1, "BluetoothOppManager"

    const-string v0, "Too many shares user triggered concurrently!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 384
    const-string v0, "title"

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0048

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string v0, "content"

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f0e0000

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 388
    monitor-exit p0

    return-void

    .line 390
    :cond_2
    new-instance v9, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;

    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFiles:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    iget-boolean v8, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mIsHandoverInitiated:Z

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppManager;Landroid/bluetooth/BluetoothDevice;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 393
    iget-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    if-eqz p1, :cond_3

    .line 394
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mFileNumInBatch:I

    .line 396
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->start()V

    .line 399
    return-void

    .line 396
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 374
    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
