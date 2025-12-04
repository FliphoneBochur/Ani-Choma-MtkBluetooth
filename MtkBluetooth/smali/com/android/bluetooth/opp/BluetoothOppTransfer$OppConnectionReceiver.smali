.class Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OppConnectionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Action :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtOppTransfer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    if-eqz v0, :cond_5

    .line 115
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 116
    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 122
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Device :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "- OPP device: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " \n mCurrentShare.mConfirm == "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 124
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 123
    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object p2

    iget-object p2, p2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object p1

    iget p1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    if-nez p1, :cond_3

    .line 128
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_ACL_DISCONNECTED to be processed for batch: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 130
    invoke-static {p2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object p2

    iget p2, p2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->removeMessages(I)V

    .line 135
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_3
    goto/16 :goto_1

    .line 138
    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 117
    :cond_4
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "device : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mBatch :"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mCurrentShare :"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 118
    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 141
    :cond_5
    const-string v0, "android.bluetooth.device.action.SDP_RECORD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 142
    const-string p1, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelUuid;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received UUID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected UUID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/bluetooth/BluetoothUuid;->OBEX_OBJECT_PUSH:Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->OBEX_OBJECT_PUSH:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 148
    const/4 p1, -0x1

    const-string v0, "android.bluetooth.device.extra.SDP_SEARCH_STATUS"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -> status: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    nop

    .line 151
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 152
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_6

    .line 153
    const-string p1, "OPP SDP search, target device is null, ignoring result"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 156
    :cond_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 157
    const-string p1, " OPP SDP search for wrong device, ignoring!!"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void

    .line 160
    :cond_7
    nop

    .line 161
    const-string p1, "android.bluetooth.device.extra.SDP_RECORD"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/SdpOppOpsRecord;

    .line 162
    const/4 p2, 0x0

    if-nez p1, :cond_8

    .line 163
    const-string p1, " Invalid SDP , ignoring !!"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    new-instance v6, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 166
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;ZZI)V

    .line 165
    invoke-static {p1, v6}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$502(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 167
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->start()V

    .line 168
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$402(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 169
    return-void

    .line 171
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    new-instance v7, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 172
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/bluetooth/SdpOppOpsRecord;->getL2capPsm()I

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;ZZI)V

    .line 171
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$502(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 173
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->start()V

    .line 174
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$402(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_2

    .line 141
    :cond_9
    :goto_1
    nop

    .line 177
    :cond_a
    :goto_2
    return-void
.end method
