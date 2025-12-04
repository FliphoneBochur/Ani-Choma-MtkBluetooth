.class public Lcom/android/bluetooth/avrcpcontroller/BrowseTree;
.super Ljava/lang/Object;
.source "BrowseTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final NOW_PLAYING_PREFIX:Ljava/lang/String; = "NOW_PLAYING"

.field public static final PLAYER_PREFIX:Ljava/lang/String; = "PLAYER"

.field public static final ROOT:Ljava/lang/String; = "__ROOT__"

.field private static final TAG:Ljava/lang/String; = "BrowseTree"

.field public static final UP:Ljava/lang/String; = "__UP__"

.field private static final VDBG:Z


# instance fields
.field private final mBrowseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoverArtMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentAddressedPlayer:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

.field private mCurrentBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

.field private mCurrentBrowsedPlayer:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

.field private mDepth:I

.field final mNavigateUpNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

.field final mNowPlayingNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

.field final mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    const-string v0, "BrowseTree"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->DBG:Z

    .line 50
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->VDBG:Z

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mBrowseMap:Ljava/util/HashMap;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mDepth:I

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCoverArtMap:Ljava/util/HashMap;

    .line 72
    const-string v1, "__ROOT__"

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 73
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    new-instance v3, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    invoke-direct {v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;-><init>()V

    .line 74
    invoke-virtual {v3, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setUuid(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setTitle(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setBrowsable(Z)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->build()Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;-><init>(Lcom/android/bluetooth/avrcpcontroller/BrowseTree;Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 75
    invoke-virtual {p1, v2}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->setCached(Z)V

    goto :goto_0

    .line 77
    :cond_0
    new-instance v3, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    new-instance v4, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    invoke-direct {v4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;-><init>()V

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setUuid(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    move-result-object v4

    .line 79
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setTitle(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setBrowsable(Z)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->build()Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    move-result-object p1

    invoke-direct {v3, p0, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;-><init>(Lcom/android/bluetooth/avrcpcontroller/BrowseTree;Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;)V

    iput-object v3, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 81
    :goto_0
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    iput-byte v0, p1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mBrowseScope:B

    .line 82
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->setExpectedChildren(I)V

    .line 84
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    new-instance v3, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    invoke-direct {v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;-><init>()V

    .line 85
    const-string v4, "__UP__"

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setUuid(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setTitle(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setBrowsable(Z)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->build()Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;-><init>(Lcom/android/bluetooth/avrcpcontroller/BrowseTree;Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mNavigateUpNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 87
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    new-instance v3, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    invoke-direct {v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;-><init>()V

    .line 88
    const-string v4, "NOW_PLAYING"

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setUuid(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setTitle(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    move-result-object v3

    .line 89
    invoke-virtual {v3, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setBrowsable(Z)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->build()Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    move-result-object v2

    invoke-direct {p1, p0, v2}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;-><init>(Lcom/android/bluetooth/avrcpcontroller/BrowseTree;Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mNowPlayingNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 90
    const/4 v2, 0x3

    iput-byte v2, p1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mBrowseScope:B

    .line 91
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mNowPlayingNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->setExpectedChildren(I)V

    .line 92
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mBrowseMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mBrowseMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mNowPlayingNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCurrentBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/avrcpcontroller/BrowseTree;)Ljava/util/HashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mBrowseMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->DBG:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->VDBG:Z

    return v0
.end method

.method static getEldestChild(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
    .locals 3

    .line 537
    nop

    .line 538
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->DBG:Z

    const-string v1, "BrowseTree"

    if-eqz v0, :cond_0

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NAVIGATING ancestor"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Target"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->access$400(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->access$400(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object p1

    .line 544
    if-nez p1, :cond_0

    .line 545
    const/4 p0, 0x0

    return-object p0

    .line 548
    :cond_1
    sget-boolean p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->DBG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NAVIGATING Descendant"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_2
    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mBrowseMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 101
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCoverArtMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 102
    return-void
.end method

.method declared-synchronized findBrowseNodeByID(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
    .locals 3

    monitor-enter p0

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mBrowseMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 355
    if-nez v0, :cond_0

    .line 356
    const-string v0, "BrowseTree"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 359
    :cond_0
    :try_start_1
    sget-boolean p1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->VDBG:Z

    if-eqz p1, :cond_1

    .line 360
    const-string p1, "BrowseTree"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mBrowseMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :cond_1
    monitor-exit p0

    return-object v0

    .line 353
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getAndClearUnusedCoverArt()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 454
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCoverArtMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 456
    iget-object v3, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCoverArtMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 457
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_0
    goto :goto_0

    .line 460
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 461
    iget-object v3, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCoverArtMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    goto :goto_1

    .line 463
    :cond_2
    monitor-exit p0

    return-object v0

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCurrentAddressedPlayer()Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
    .locals 1

    monitor-enter p0

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCurrentAddressedPlayer:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCurrentBrowsedFolder()Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
    .locals 1

    monitor-enter p0

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCurrentBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCurrentBrowsedPlayer()Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
    .locals 1

    monitor-enter p0

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCurrentBrowsedPlayer:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNextStepToFolder(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
    .locals 3

    .line 510
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 511
    return-object v0

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCurrentBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mNowPlayingNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 513
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 514
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 516
    :cond_1
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->isPlayer()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 517
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mDepth:I

    if-lez v0, :cond_2

    .line 518
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mDepth:I

    .line 519
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mNavigateUpNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    return-object p1

    .line 521
    :cond_2
    return-object p1

    .line 523
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mBrowseMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 524
    return-object v0

    .line 526
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCurrentBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->getEldestChild(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object p1

    .line 527
    if-nez p1, :cond_5

    .line 528
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mNavigateUpNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    return-object p1

    .line 530
    :cond_5
    return-object p1

    .line 515
    :cond_6
    :goto_0
    return-object p1
.end method

.method declared-synchronized getNodesUsingCoverArt(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCoverArtMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 447
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCoverArtMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 445
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getTrackFromNowPlayingList(I)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mNowPlayingNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getChild(I)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized indicateCoverArtUnused(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCoverArtMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCoverArtMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCoverArtMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :cond_0
    monitor-exit p0

    return-void

    .line 436
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized indicateCoverArtUsed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCoverArtMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCoverArtMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    monitor-exit p0

    return-void

    .line 428
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized notifyImageDownload(Ljava/lang/String;Landroid/net/Uri;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 472
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BrowseTree"

    const-string v1, "Received downloaded image handle to cascade to BrowseNodes using it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->getNodesUsingCoverArt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 474
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 475
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 476
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->findBrowseNodeByID(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object v3

    .line 477
    if-nez v3, :cond_1

    .line 478
    const-string v3, "BrowseTree"

    const-string v4, "Node was removed without clearing its cover art status"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {p0, v2, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->indicateCoverArtUnused(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    goto :goto_0

    .line 482
    :cond_1
    invoke-virtual {v3, p2}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->setCoverArtUri(Landroid/net/Uri;)V

    .line 483
    invoke-static {v3}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->access$400(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 484
    invoke-static {v3}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->access$400(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :cond_2
    goto :goto_0

    .line 487
    :cond_3
    monitor-exit p0

    return-object v1

    .line 471
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method onConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 105
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;-><init>(Lcom/android/bluetooth/avrcpcontroller/BrowseTree;Landroid/bluetooth/BluetoothDevice;)V

    .line 106
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->addChild(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)Z

    .line 107
    return-void
.end method

.method declared-synchronized setCurrentAddressedPlayer(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mBrowseMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 409
    if-nez v0, :cond_1

    .line 410
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BrowseTree"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting an unknown addressed player, ignoring bn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->setCached(Z)V

    .line 412
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->access$500(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mNowPlayingNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mBrowseMap:Ljava/util/HashMap;

    const-string v1, "NOW_PLAYING"

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mNowPlayingNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    monitor-exit p0

    return v0

    .line 416
    :cond_1
    :try_start_1
    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCurrentAddressedPlayer:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 407
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setCurrentBrowsedFolder(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mBrowseMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 367
    if-nez v0, :cond_0

    .line 368
    const-string v0, "BrowseTree"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting an unknown browsed folder, ignoring bn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 373
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCurrentBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 374
    const-string p1, "BrowseTree"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set cache  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " curr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCurrentBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_1
    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCurrentBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 365
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setCurrentBrowsedPlayer(Ljava/lang/String;II)Z
    .locals 4

    monitor-enter p0

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mBrowseMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 386
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 387
    const-string p2, "BrowseTree"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Setting an unknown browsed player, ignoring bn "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit p0

    return v1

    .line 390
    :cond_0
    :try_start_1
    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCurrentBrowsedPlayer:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 391
    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCurrentBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 392
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, p3, :cond_1

    .line 393
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;-><init>(Lcom/android/bluetooth/avrcpcontroller/BrowseTree;Ljava/lang/String;Lcom/android/bluetooth/avrcpcontroller/BrowseTree$1;)V

    .line 394
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCurrentBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-static {v0, v2}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->access$402(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 395
    iput-byte v1, v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->mBrowseScope:B

    .line 396
    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCurrentBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 392
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 398
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCurrentBrowseNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->setExpectedChildren(I)V

    .line 399
    iput p3, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mDepth:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    monitor-exit p0

    return v1

    .line 384
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mBrowseMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    sget-boolean v1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->VDBG:Z

    if-eqz v1, :cond_0

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n  Image handles in use ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCoverArtMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mCoverArtMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    goto :goto_0

    .line 501
    :cond_0
    return-object v0
.end method
