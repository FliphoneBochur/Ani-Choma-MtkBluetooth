.class Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/sap/SapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SapBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/sap/SapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/sap/SapService;Lcom/android/bluetooth/sap/SapService$1;)V
    .locals 0

    .line 792
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;-><init>(Lcom/android/bluetooth/sap/SapService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 799
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 800
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 801
    const/high16 p1, -0x80000000

    .line 802
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 803
    const/16 p2, 0xd

    if-ne p1, p2, :cond_0

    .line 807
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$1900(Lcom/android/bluetooth/sap/SapService;)V

    goto :goto_0

    .line 808
    :cond_0
    const/16 p2, 0xc

    if-ne p1, p2, :cond_1

    .line 813
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$900(Lcom/android/bluetooth/sap/SapService;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    .line 814
    invoke-static {p2}, Lcom/android/bluetooth/sap/SapService;->access$900(Lcom/android/bluetooth/sap/SapService;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 813
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 816
    :cond_1
    :goto_0
    return-void

    .line 819
    :cond_2
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x1388

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "SapService"

    if-eqz v0, :cond_8

    .line 820
    const-string p1, " - Received BluetoothDevice.ACTION_CONNECTION_ACCESS_REPLY"

    invoke-static {v5, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 p1, -0x1

    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 823
    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    .line 824
    return-void

    .line 827
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1, v4}, Lcom/android/bluetooth/sap/SapService;->access$702(Lcom/android/bluetooth/sap/SapService;Z)Z

    .line 829
    const-string p1, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    if-ne p1, v1, :cond_6

    .line 833
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 834
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$400(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->setSimAccessPermission(I)Z

    .line 840
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$400(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Lcom/android/bluetooth/sap/SapService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    .line 842
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setConnectionPolicy ALLOWED, result = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :try_start_0
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$300(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 847
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$600(Lcom/android/bluetooth/sap/SapService;)V

    goto :goto_1

    .line 849
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$1400(Lcom/android/bluetooth/sap/SapService;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    :goto_1
    goto :goto_2

    .line 851
    :catch_0
    move-exception p1

    .line 852
    const-string p2, "Caught the error: "

    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 854
    :goto_2
    goto :goto_3

    .line 855
    :cond_6
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 856
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$400(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothDevice;->setSimAccessPermission(I)Z

    .line 862
    :cond_7
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$400(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Lcom/android/bluetooth/sap/SapService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    .line 864
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setConnectionPolicy FORBIDDEN, result = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$900(Lcom/android/bluetooth/sap/SapService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 868
    :goto_3
    return-void

    .line 871
    :cond_8
    const-string v0, "com.android.bluetooth.sap.USER_CONFIRM_TIMEOUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 876
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$2000(Lcom/android/bluetooth/sap/SapService;)V

    .line 877
    return-void

    .line 880
    :cond_9
    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$700(Lcom/android/bluetooth/sap/SapService;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 881
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 883
    iget-object p2, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p2}, Lcom/android/bluetooth/sap/SapService;->access$400(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_c

    if-nez p1, :cond_a

    goto :goto_4

    .line 892
    :cond_a
    iget-object p2, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p2}, Lcom/android/bluetooth/sap/SapService;->access$400(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 893
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$2100(Lcom/android/bluetooth/sap/SapService;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 895
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$900(Lcom/android/bluetooth/sap/SapService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 896
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$900(Lcom/android/bluetooth/sap/SapService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 898
    :cond_b
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1, v4}, Lcom/android/bluetooth/sap/SapService;->access$1600(Lcom/android/bluetooth/sap/SapService;I)V

    .line 900
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapService;->access$900(Lcom/android/bluetooth/sap/SapService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 884
    :cond_c
    :goto_4
    const-string p1, "Unexpected error!"

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    return-void

    .line 903
    :cond_d
    :goto_5
    return-void
.end method
