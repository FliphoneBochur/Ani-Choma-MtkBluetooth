.class Lcom/android/bluetooth/mapclient/MasClient$MasClientHandler;
.super Landroid/os/Handler;
.source "MasClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapclient/MasClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MasClientHandler"
.end annotation


# instance fields
.field mInst:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/bluetooth/mapclient/MasClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/bluetooth/mapclient/MasClient;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 217
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MasClient$MasClientHandler;->mInst:Ljava/lang/ref/WeakReference;

    .line 218
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MasClient$MasClientHandler;->mInst:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/mapclient/MasClient;

    .line 223
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MasClient;->access$000(Lcom/android/bluetooth/mapclient/MasClient;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 238
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/mapclient/Request;

    invoke-static {v0, p1}, Lcom/android/bluetooth/mapclient/MasClient;->access$300(Lcom/android/bluetooth/mapclient/MasClient;Lcom/android/bluetooth/mapclient/Request;)V

    goto :goto_0

    .line 231
    :cond_1
    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MasClient;->access$000(Lcom/android/bluetooth/mapclient/MasClient;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 232
    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MasClient;->access$200(Lcom/android/bluetooth/mapclient/MasClient;)V

    goto :goto_0

    .line 225
    :cond_2
    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MasClient;->access$000(Lcom/android/bluetooth/mapclient/MasClient;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 226
    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MasClient;->access$100(Lcom/android/bluetooth/mapclient/MasClient;)V

    .line 242
    :cond_3
    :goto_0
    return-void
.end method
