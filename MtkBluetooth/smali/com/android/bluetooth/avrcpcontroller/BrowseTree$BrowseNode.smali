.class Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
.super Ljava/lang/Object;
.source "BrowseTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcpcontroller/BrowseTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrowseNode"
.end annotation


# instance fields
.field mBrowseScope:B

.field mCached:Z

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;",
            ">;"
        }
    .end annotation
.end field

.field private mExpectedChildrenCount:I

.field mIsPlayer:Z

.field mItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

.field private mParent:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

.field final synthetic this$0:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcpcontroller/BrowseTree;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 152
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->this$0:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mIsPlayer:Z

    .line 125
    iput-boolean p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mCached:Z

    .line 127
    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mBrowseScope:B

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mChildren:Ljava/util/List;

    .line 153
    iput-boolean p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mIsPlayer:Z

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PLAYER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    invoke-direct {v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;-><init>()V

    .line 157
    invoke-virtual {v1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 158
    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setUuid(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 159
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setDisplayableName(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 160
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setTitle(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 161
    invoke-virtual {v1, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setBrowsable(Z)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 162
    invoke-virtual {v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->build()Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    .line 163
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/avrcpcontroller/BrowseTree;Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->this$0:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mIsPlayer:Z

    .line 125
    iput-boolean p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mCached:Z

    .line 127
    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mBrowseScope:B

    .line 131
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mChildren:Ljava/util/List;

    .line 135
    iput-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    .line 136
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/avrcpcontroller/BrowseTree;Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;)V
    .locals 2

    .line 138
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->this$0:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mIsPlayer:Z

    .line 125
    iput-boolean p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mCached:Z

    .line 127
    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mBrowseScope:B

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mChildren:Ljava/util/List;

    .line 139
    iput-boolean p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mIsPlayer:Z

    .line 142
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    invoke-direct {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;-><init>()V

    .line 143
    invoke-virtual {p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 144
    invoke-virtual {p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setUid(J)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 145
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setUuid(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 146
    invoke-virtual {p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setDisplayableName(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 147
    invoke-virtual {p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setTitle(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 148
    const/16 v0, 0x3b

    invoke-virtual {p2, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->supportsFeature(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setBrowsable(Z)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 149
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->build()Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    .line 150
    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/avrcpcontroller/BrowseTree;Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->this$0:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mIsPlayer:Z

    .line 125
    iput-boolean p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mCached:Z

    .line 127
    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mBrowseScope:B

    .line 131
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mChildren:Ljava/util/List;

    .line 166
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    invoke-direct {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;-><init>()V

    .line 167
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setUuid(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 168
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setDisplayableName(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 169
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setTitle(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 170
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->build()Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    .line 171
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/avrcpcontroller/BrowseTree;Ljava/lang/String;Lcom/android/bluetooth/avrcpcontroller/BrowseTree$1;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;-><init>(Lcom/android/bluetooth/avrcpcontroller/BrowseTree;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mParent:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mParent:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)Ljava/util/List;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mChildren:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method declared-synchronized addChild(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)Z
    .locals 2

    monitor-enter p0

    .line 195
    if-eqz p1, :cond_2

    .line 196
    :try_start_0
    iput-object p0, p1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mParent:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 197
    iget-byte v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mBrowseScope:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 198
    iget-byte v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mBrowseScope:B

    iput-byte v0, p1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mBrowseScope:B

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->this$0:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->access$000(Lcom/android/bluetooth/avrcpcontroller/BrowseTree;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getCoverArtUuid()Ljava/lang/String;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_1

    .line 207
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->this$0:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->indicateCoverArtUsed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_1
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 194
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 211
    :cond_2
    const/4 p1, 0x0

    monitor-exit p0

    return p1
.end method

.method declared-synchronized addChildren(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;)I"
        }
    .end annotation

    monitor-enter p0

    .line 182
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 183
    const/4 v2, 0x0

    .line 184
    instance-of v3, v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    if-eqz v3, :cond_0

    .line 185
    new-instance v2, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    iget-object v3, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->this$0:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    check-cast v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-direct {v2, v3, v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;-><init>(Lcom/android/bluetooth/avrcpcontroller/BrowseTree;Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;)V

    goto :goto_1

    .line 186
    :cond_0
    instance-of v3, v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    if-eqz v3, :cond_1

    .line 187
    new-instance v2, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    iget-object v3, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->this$0:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    check-cast v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    invoke-direct {v2, v3, v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;-><init>(Lcom/android/bluetooth/avrcpcontroller/BrowseTree;Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;)V

    .line 189
    :cond_1
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->addChild(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)Z

    .line 190
    goto :goto_0

    .line 191
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 181
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 325
    instance-of v0, p1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    if-nez v0, :cond_0

    .line 326
    const/4 p1, 0x0

    return p1

    .line 328
    :cond_0
    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 329
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method declared-synchronized getBluetoothID()J
    .locals 2

    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getUid()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getChild(I)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
    .locals 1

    monitor-enter p0

    .line 229
    if-ltz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 228
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 230
    :cond_1
    :goto_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1
.end method

.method declared-synchronized getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mChildren:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getChildrenCount()I
    .locals 1

    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getContents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mCached:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 253
    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 255
    invoke-virtual {v2}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getMediaItem()Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    goto :goto_1

    .line 257
    :cond_2
    monitor-exit p0

    return-object v0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCoverArtUuid()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getCoverArtUuid()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getExpectedChildren()I
    .locals 1

    monitor-enter p0

    .line 178
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mExpectedChildrenCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getFolderUID()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 304
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getID()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getID()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getUuid()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getMediaItem()Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 1

    monitor-enter p0

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->toMediaItem()Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getParent()Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
    .locals 1

    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mParent:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getPlayerID()I
    .locals 3

    monitor-enter p0

    .line 293
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PLAYER"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getScope()B
    .locals 1

    monitor-enter p0

    .line 297
    :try_start_0
    iget-byte v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mBrowseScope:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isBrowsable()Z
    .locals 1

    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->isBrowsable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isCached()Z
    .locals 1

    monitor-enter p0

    .line 267
    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mCached:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isChild(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)Z
    .locals 1

    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 263
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isDescendant(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)Z
    .locals 0

    monitor-enter p0

    .line 349
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->getEldestChild(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    .line 349
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isNowPlaying()Z
    .locals 2

    monitor-enter p0

    .line 320
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOW_PLAYING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isPlayer()Z
    .locals 1

    monitor-enter p0

    .line 316
    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mIsPlayer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeChild(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V
    .locals 2

    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->this$0:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->access$000(Lcom/android/bluetooth/avrcpcontroller/BrowseTree;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->this$0:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getCoverArtUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->indicateCoverArtUnused(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    .line 214
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setCached(Z)V
    .locals 3

    monitor-enter p0

    .line 275
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BrowseTree"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "Node"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    iput-boolean p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mCached:Z

    .line 277
    if-nez p1, :cond_2

    .line 278
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mChildren:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 279
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->this$0:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-static {v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->access$000(Lcom/android/bluetooth/avrcpcontroller/BrowseTree;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->this$0:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getCoverArtUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->indicateCoverArtUnused(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    goto :goto_0

    .line 282
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mChildren:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :cond_2
    monitor-exit p0

    return-void

    .line 274
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setCoverArtUri(Landroid/net/Uri;)V
    .locals 1

    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->setCoverArtLocation(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setExpectedChildren(I)V
    .locals 0

    monitor-enter p0

    .line 174
    :try_start_0
    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mExpectedChildrenCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 334
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Scope:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mBrowseScope:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " expected Children: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mExpectedChildrenCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    goto :goto_0

    .line 341
    :cond_0
    monitor-exit p0

    return-object v0

    .line 343
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
