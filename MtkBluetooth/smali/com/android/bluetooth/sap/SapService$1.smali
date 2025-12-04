.class Lcom/android/bluetooth/sap/SapService$1;
.super Landroid/os/Handler;
.source "SapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/sap/SapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/sap/SapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 437
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/16 v2, 0x1388

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 495
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/bluetooth/sap/SapService;->access$1600(Lcom/android/bluetooth/sap/SapService;I)V

    .line 496
    goto/16 :goto_0

    .line 484
    :pswitch_1
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$1500(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 485
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$1500(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 463
    :pswitch_2
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$1500(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-nez p1, :cond_0

    .line 464
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/sap/SapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 465
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    const-string v2, "StartingObexMapTransaction"

    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/bluetooth/sap/SapService;->access$1502(Lcom/android/bluetooth/sap/SapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 467
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$1500(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 469
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$1500(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_1

    .line 470
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$1500(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 475
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$900(Lcom/android/bluetooth/sap/SapService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x138e

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 476
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$900(Lcom/android/bluetooth/sap/SapService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    .line 477
    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->access$900(Lcom/android/bluetooth/sap/SapService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 476
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 479
    goto :goto_0

    .line 452
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$1400(Lcom/android/bluetooth/sap/SapService;)V

    .line 453
    goto :goto_0

    .line 500
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$1700(Lcom/android/bluetooth/sap/SapService;)V

    .line 501
    goto :goto_0

    .line 444
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$700(Lcom/android/bluetooth/sap/SapService;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 445
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$400(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/sap/SapService;->access$1200(Lcom/android/bluetooth/sap/SapService;Landroid/bluetooth/BluetoothDevice;)V

    .line 446
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$1300(Lcom/android/bluetooth/sap/SapService;)V

    .line 447
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1, v3}, Lcom/android/bluetooth/sap/SapService;->access$702(Lcom/android/bluetooth/sap/SapService;Z)Z

    .line 448
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$1400(Lcom/android/bluetooth/sap/SapService;)V

    goto :goto_0

    .line 439
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$1000(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 440
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$1100(Lcom/android/bluetooth/sap/SapService;)V

    .line 505
    :cond_6
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x138d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
