.class final Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;
.super Ljava/lang/Object;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InCompletionOrderState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile delegateIndex:I

.field private final incompleteOutputCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final inputFutures:[Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private shouldInterrupt:Z

.field private wasCancelled:Z


# direct methods
.method private constructor <init>([Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TT;>;)V"
        }
    .end annotation

    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->wasCancelled:Z

    .line 958
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->shouldInterrupt:Z

    .line 961
    iput v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->delegateIndex:I

    .line 964
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->inputFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    .line 965
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    array-length p1, p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->incompleteOutputCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 966
    return-void
.end method

.method synthetic constructor <init>([Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/Futures$1;)V
    .locals 0

    .line 953
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;-><init>([Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;Lcom/google/common/collect/ImmutableList;I)V
    .locals 0

    .line 953
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->recordInputCompletion(Lcom/google/common/collect/ImmutableList;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;Z)V
    .locals 0

    .line 953
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->recordOutputCancellation(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;)[Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 953
    iget-object p0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->inputFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 953
    iget-object p0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->incompleteOutputCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private recordCompletion()V
    .locals 5

    .line 998
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->incompleteOutputCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->wasCancelled:Z

    if-eqz v0, :cond_1

    .line 999
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->inputFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1000
    if-eqz v3, :cond_0

    .line 1001
    iget-boolean v4, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->shouldInterrupt:Z

    invoke-interface {v3, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 999
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1005
    :cond_1
    return-void
.end method

.method private recordInputCompletion(Lcom/google/common/collect/ImmutableList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/util/concurrent/AbstractFuture<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 980
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->inputFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    aget-object v1, v0, p2

    .line 982
    const/4 v2, 0x0

    aput-object v2, v0, p2

    .line 983
    iget p2, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->delegateIndex:I

    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 984
    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->recordCompletion()V

    .line 987
    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->delegateIndex:I

    .line 988
    return-void

    .line 983
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 994
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p1

    iput p1, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->delegateIndex:I

    .line 995
    return-void
.end method

.method private recordOutputCancellation(Z)V
    .locals 1

    .line 969
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->wasCancelled:Z

    .line 972
    if-nez p1, :cond_0

    .line 973
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->shouldInterrupt:Z

    .line 975
    :cond_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->recordCompletion()V

    .line 976
    return-void
.end method
