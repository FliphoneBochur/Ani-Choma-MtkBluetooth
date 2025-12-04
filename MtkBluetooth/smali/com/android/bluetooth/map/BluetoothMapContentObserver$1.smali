.class Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;
.super Landroid/database/ContentObserver;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Landroid/os/Handler;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 471
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;->onChange(ZLandroid/net/Uri;)V

    .line 472
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 476
    const-string v0, "BluetoothMapContentObserver"

    if-nez p2, :cond_0

    .line 477
    const-string p1, "onChange() with URI == null - not handled."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$200(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 482
    const-string p1, "Ignore events until storage is completely unlocked"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void

    .line 486
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$300()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange on thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " selfchange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 487
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConvoContact"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 492
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$400(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Landroid/net/Uri;)V

    goto :goto_0

    .line 494
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$500(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Landroid/net/Uri;)V

    .line 496
    :goto_0
    return-void
.end method
