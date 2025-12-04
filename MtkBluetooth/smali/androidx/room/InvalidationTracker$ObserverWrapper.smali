.class Landroidx/room/InvalidationTracker$ObserverWrapper;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObserverWrapper"
.end annotation


# instance fields
.field final mObserver:Landroidx/room/InvalidationTracker$Observer;

.field private final mSingleTableSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTableIds:[I

.field private final mTableNames:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/room/InvalidationTracker$Observer;[I[Ljava/lang/String;)V
    .locals 3
    .param p1, "observer"    # Landroidx/room/InvalidationTracker$Observer;
    .param p2, "tableIds"    # [I
    .param p3, "tableNames"    # [Ljava/lang/String;

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    iput-object p1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mObserver:Landroidx/room/InvalidationTracker$Observer;

    .line 599
    iput-object p2, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    .line 600
    iput-object p3, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableNames:[Ljava/lang/String;

    .line 601
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 602
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 603
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableNames:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mSingleTableSet:Ljava/util/Set;

    .line 605
    .end local v0    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_0

    .line 606
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mSingleTableSet:Ljava/util/Set;

    .line 608
    :goto_0
    return-void
.end method


# virtual methods
.method notifyByTableInvalidStatus(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 617
    .local p1, "invalidatedTablesIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 618
    .local v0, "invalidatedTables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    array-length v1, v1

    .line 619
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 620
    iget-object v3, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    aget v3, v3, v2

    .line 621
    .local v3, "tableId":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 622
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 624
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mSingleTableSet:Ljava/util/Set;

    goto :goto_1

    .line 626
    :cond_0
    if-nez v0, :cond_1

    .line 627
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(I)V

    move-object v0, v4

    .line 629
    :cond_1
    iget-object v4, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableNames:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 619
    .end local v3    # "tableId":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    .end local v2    # "index":I
    :cond_3
    if-eqz v0, :cond_4

    .line 634
    iget-object v2, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mObserver:Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v2, v0}, Landroidx/room/InvalidationTracker$Observer;->onInvalidated(Ljava/util/Set;)V

    .line 636
    :cond_4
    return-void
.end method

.method notifyByTableNames([Ljava/lang/String;)V
    .locals 11
    .param p1, "tables"    # [Ljava/lang/String;

    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, "invalidatedTables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableNames:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 647
    array-length v1, p1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 648
    .local v4, "table":Ljava/lang/String;
    iget-object v5, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 650
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mSingleTableSet:Ljava/util/Set;

    .line 651
    goto :goto_1

    .line 647
    .end local v4    # "table":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_5

    .line 655
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 656
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v3, p1

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, p1, v4

    .line 657
    .local v5, "table":Ljava/lang/String;
    iget-object v6, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableNames:[Ljava/lang/String;

    array-length v7, v6

    move v8, v2

    :goto_3
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 658
    .local v9, "ourTable":Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 659
    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 660
    goto :goto_4

    .line 657
    .end local v9    # "ourTable":Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 656
    .end local v5    # "table":Ljava/lang/String;
    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 664
    :cond_5
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 665
    move-object v0, v1

    .line 668
    .end local v1    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_6
    :goto_5
    if-eqz v0, :cond_7

    .line 669
    iget-object v1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mObserver:Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v1, v0}, Landroidx/room/InvalidationTracker$Observer;->onInvalidated(Ljava/util/Set;)V

    .line 671
    :cond_7
    return-void
.end method
