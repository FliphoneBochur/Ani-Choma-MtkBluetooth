.class Lcom/android/bluetooth/sdp/SdpManager$1;
.super Landroid/os/Handler;
.source "SdpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/sdp/SdpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/sdp/SdpManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/sdp/SdpManager;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/android/bluetooth/sdp/SdpManager$1;->this$0:Lcom/android/bluetooth/sdp/SdpManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 488
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 490
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Search timedout for UUID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    sget-object v0, Lcom/android/bluetooth/sdp/SdpManager;->TRACKER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sdp/SdpManager$1;->this$0:Lcom/android/bluetooth/sdp/SdpManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/android/bluetooth/sdp/SdpManager;->access$100(Lcom/android/bluetooth/sdp/SdpManager;Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V

    .line 494
    monitor-exit v0

    .line 497
    :goto_0
    return-void

    .line 494
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
