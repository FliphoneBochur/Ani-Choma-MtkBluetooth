.class Lcom/android/bluetooth/map/BluetoothMapAppObserver$1;
.super Landroid/database/ContentObserver;
.source "BluetoothMapAppObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapAppObserver;->registerObserver(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Landroid/os/Handler;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver$1;->onChange(ZLandroid/net/Uri;)V

    .line 190
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 194
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->access$000()Z

    move-result v0

    const-string v1, "BluetoothMapAppObserver"

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange on thread: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " Uri: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " selfchange: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    if-eqz p2, :cond_1

    .line 200
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->access$100(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_1
    const-string p1, "Unable to handle change as the URI is NULL!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    return-void
.end method
