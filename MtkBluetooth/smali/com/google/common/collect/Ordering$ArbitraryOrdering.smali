.class Lcom/google/common/collect/Ordering$ArbitraryOrdering;
.super Lcom/google/common/collect/Ordering;
.source "Ordering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArbitraryOrdering"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Ordering<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final uids:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 320
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    .line 322
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 323
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    .line 324
    invoke-static {v0}, Lcom/google/common/collect/Platform;->tryWeakKeys(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/concurrent/ConcurrentMap;

    .line 323
    return-void
.end method

.method private getUid(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 328
    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 334
    if-eqz p1, :cond_0

    .line 335
    move-object v0, p1

    .line 338
    :cond_0
    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 343
    if-ne p1, p2, :cond_0

    .line 344
    const/4 p1, 0x0

    return p1

    .line 345
    :cond_0
    const/4 v0, -0x1

    if-nez p1, :cond_1

    .line 346
    return v0

    .line 347
    :cond_1
    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 348
    return v1

    .line 350
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 351
    invoke-virtual {p0, p2}, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 352
    if-eq v2, v3, :cond_4

    .line 353
    if-ge v2, v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 357
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->getUid(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->getUid(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    .line 358
    if-eqz p1, :cond_5

    .line 361
    return p1

    .line 359
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method identityHashCode(Ljava/lang/Object;)I
    .locals 0

    .line 378
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 366
    const-string v0, "Ordering.arbitrary()"

    return-object v0
.end method
