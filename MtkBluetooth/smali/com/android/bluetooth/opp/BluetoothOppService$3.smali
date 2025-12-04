.class Lcom/android/bluetooth/opp/BluetoothOppService$3;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 528
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 530
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 531
    const/high16 v0, -0x80000000

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0xc

    if-eq p2, v0, :cond_2

    const/16 v0, 0xd

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    .line 560
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$000()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 561
    const-string p2, "BtOppService"

    const-string v0, "Bluetooth state changed: STATE_TURNING_OFF"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_1
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p2}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 565
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p2, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1700(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/content/Context;)V

    .line 566
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p2, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1800(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/content/Context;)V

    goto :goto_0

    .line 533
    :cond_2
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$000()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 534
    const-string p2, "BtOppService"

    const-string v0, "Bluetooth state changed: STATE_ON"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_3
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p2}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1600(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    .line 539
    monitor-enter p0

    .line 540
    :try_start_0
    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    if-eqz p2, :cond_4

    .line 542
    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object p2

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    .line 544
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 546
    const-string v0, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 548
    const-string v0, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    const-string v1, "com.android.bluetooth"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    const-string v0, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    const-class v1, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    .line 551
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 550
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 554
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 556
    :cond_4
    monitor-exit p0

    .line 558
    goto :goto_0

    .line 556
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 570
    :cond_5
    :goto_0
    return-void
.end method
