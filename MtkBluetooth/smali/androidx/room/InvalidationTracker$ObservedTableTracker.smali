.class Landroidx/room/InvalidationTracker$ObservedTableTracker;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObservedTableTracker"
.end annotation


# static fields
.field static final ADD:I = 0x1

.field static final NO_OP:I = 0x0

.field static final REMOVE:I = 0x2


# instance fields
.field mNeedsSync:Z

.field mPendingSync:Z

.field final mTableObservers:[J

.field final mTriggerStateChanges:[I

.field final mTriggerStates:[Z


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "tableCount"    # I

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    .line 746
    new-array v1, p1, [Z

    iput-object v1, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    .line 747
    new-array v1, p1, [I

    iput-object v1, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    .line 748
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 749
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 750
    return-void
.end method


# virtual methods
.method getTablesToSync()[I
    .locals 8

    .line 796
    monitor-enter p0

    .line 797
    :try_start_0
    iget-boolean v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    if-eqz v0, :cond_0

    goto :goto_4

    .line 800
    :cond_0
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    array-length v0, v0

    .line 801
    .local v0, "tableCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v0, :cond_4

    .line 802
    iget-object v4, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    aget-wide v4, v4, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 803
    .local v4, "newState":Z
    :goto_1
    iget-object v5, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    aget-boolean v5, v5, v1

    if-eq v4, v5, :cond_3

    .line 804
    iget-object v2, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    :goto_2
    aput v3, v2, v1

    goto :goto_3

    .line 806
    :cond_3
    iget-object v3, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    aput v2, v3, v1

    .line 808
    :goto_3
    iget-object v2, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    aput-boolean v4, v2, v1

    .line 801
    .end local v4    # "newState":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 810
    .end local v1    # "i":I
    :cond_4
    iput-boolean v3, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    .line 811
    iput-boolean v2, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    .line 812
    iget-object v1, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    monitor-exit p0

    return-object v1

    .line 798
    .end local v0    # "tableCount":I
    :cond_5
    :goto_4
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 813
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method varargs onAdded([I)Z
    .locals 9
    .param p1, "tableIds"    # [I

    .line 756
    const/4 v0, 0x0

    .line 757
    .local v0, "needTriggerSync":Z
    monitor-enter p0

    .line 758
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 759
    .local v3, "tableId":I
    iget-object v4, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    aget-wide v4, v4, v3

    .line 760
    .local v4, "prevObserverCount":J
    iget-object v6, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v4

    aput-wide v7, v6, v3

    .line 761
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 762
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    .line 763
    const/4 v0, 0x1

    .line 758
    .end local v3    # "tableId":I
    .end local v4    # "prevObserverCount":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 766
    :cond_1
    monitor-exit p0

    .line 767
    return v0

    .line 766
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method varargs onRemoved([I)Z
    .locals 11
    .param p1, "tableIds"    # [I

    .line 774
    const/4 v0, 0x0

    .line 775
    .local v0, "needTriggerSync":Z
    monitor-enter p0

    .line 776
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 777
    .local v3, "tableId":I
    iget-object v4, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    aget-wide v4, v4, v3

    .line 778
    .local v4, "prevObserverCount":J
    iget-object v6, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    const-wide/16 v7, 0x1

    sub-long v9, v4, v7

    aput-wide v9, v6, v3

    .line 779
    cmp-long v6, v4, v7

    if-nez v6, :cond_0

    .line 780
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    .line 781
    const/4 v0, 0x1

    .line 776
    .end local v3    # "tableId":I
    .end local v4    # "prevObserverCount":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 784
    :cond_1
    monitor-exit p0

    .line 785
    return v0

    .line 784
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onSyncCompleted()V
    .locals 1

    .line 821
    monitor-enter p0

    .line 822
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    .line 823
    monitor-exit p0

    .line 824
    return-void

    .line 823
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
