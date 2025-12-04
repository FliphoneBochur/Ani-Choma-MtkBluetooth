.class Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient$AvrcpBipClientHandler;
.super Landroid/os/Handler;
.source "AvrcpBipClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvrcpBipClientHandler"
.end annotation


# instance fields
.field mInst:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;)V
    .locals 0

    .line 397
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 398
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient$AvrcpBipClientHandler;->mInst:Ljava/lang/ref/WeakReference;

    .line 399
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient$AvrcpBipClientHandler;->mInst:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;

    .line 404
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 p1, 0x3

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 419
    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->access$200(Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;)V

    goto :goto_0

    .line 424
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 425
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/BipRequest;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->access$300(Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;Lcom/android/bluetooth/avrcpcontroller/BipRequest;)V

    goto :goto_0

    .line 412
    :cond_2
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 413
    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->access$100(Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;)V

    goto :goto_0

    .line 406
    :cond_3
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->isConnected()Z

    move-result p1

    if-nez p1, :cond_4

    .line 407
    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->access$000(Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;)V

    .line 429
    :cond_4
    :goto_0
    return-void
.end method
