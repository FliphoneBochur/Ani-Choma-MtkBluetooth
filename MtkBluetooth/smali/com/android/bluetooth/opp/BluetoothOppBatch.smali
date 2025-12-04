.class public Lcom/android/bluetooth/opp/BluetoothOppBatch;
.super Ljava/lang/Object;
.source "BluetoothOppBatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BtOppBatch"

.field private static final V:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field public final mDestination:Landroid/bluetooth/BluetoothDevice;

.field public final mDirection:I

.field public mId:I

.field private mListener:Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

.field private final mShares:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/opp/BluetoothOppShareInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mStatus:I

.field public final mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->V:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 3

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 104
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mContext:Landroid/content/Context;

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    .line 106
    iget-wide v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    iput-wide v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mTimestamp:J

    .line 107
    iget p1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    .line 108
    iget-object p1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    .line 109
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 110
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->V:Z

    if-eqz p1, :cond_0

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "New Batch created for info "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtOppBatch"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public RemoveShareInfo(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 3

    .line 203
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->V:Z

    const-string v1, "BtOppBatch"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " RemoveShareInfo before size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 205
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->V:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " RemoveShareInfo after size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_1
    return-void
.end method

.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mListener:Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

    if-eqz v0, :cond_0

    .line 126
    iget p1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-interface {v0, p1}, Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;->onShareAdded(I)V

    .line 128
    :cond_0
    return-void
.end method

.method public cancelBatch()V
    .locals 7

    .line 138
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->V:Z

    const-string v1, "BtOppBatch"

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "batch "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is canceled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mListener:Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

    if-eqz v0, :cond_1

    .line 143
    invoke-interface {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;->onBatchCanceled()V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_5

    .line 147
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 149
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v5, 0xc8

    if-ge v4, v5, :cond_4

    .line 150
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-ne v4, v2, :cond_2

    iget-object v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    .line 151
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 153
    :cond_2
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppBatch;->V:Z

    if-eqz v4, :cond_3

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancel batch for info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mContext:Landroid/content/Context;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v5, 0x1ea

    invoke-static {v4, v3, v5}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 146
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 160
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 161
    return-void
.end method

.method public getNumShares()I
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .locals 4

    .line 193
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 195
    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v3, 0xbe

    if-ne v2, v3, :cond_0

    .line 196
    return-object v1

    .line 193
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Z
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerListern(Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mListener:Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

    .line 185
    return-void
.end method
