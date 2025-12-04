.class Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;
.super Lcom/android/bluetooth/statemachine/State;
.source "BondStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/BondStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingCommandState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/BondStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/BondStateMachine;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/BondStateMachine$1;)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;-><init>(Lcom/android/bluetooth/btservice/BondStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    const-string v1, "Entering PendingCommandState State"

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$200(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 205
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10

    .line 209
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 210
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$900(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/RemoteDevices;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .line 211
    nop

    .line 212
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$600(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x4

    if-eq v2, v5, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v3, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x6

    if-eq v2, v5, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 216
    return v4

    .line 219
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unhandled event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothBondStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return v5

    .line 282
    :pswitch_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 283
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    .line 284
    const/16 v6, 0x540

    if-eq v2, v6, :cond_3

    const/16 v6, 0x5c0

    if-ne v2, v6, :cond_1

    goto :goto_0

    .line 299
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v4, :cond_2

    .line 300
    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAddress()[B

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {p1, v1, v5, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1500(Lcom/android/bluetooth/btservice/BondStateMachine;[BII)V

    goto/16 :goto_1

    .line 305
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAddress()[B

    move-result-object v1

    invoke-static {p1, v1, v5, v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1500(Lcom/android/bluetooth/btservice/BondStateMachine;[BII)V

    .line 309
    goto/16 :goto_1

    .line 293
    :cond_3
    :goto_0
    const p1, 0x186a0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x412b773e00000000L    # 899999.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    add-int/2addr v2, p1

    .line 294
    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAddress()[B

    move-result-object v1

    invoke-static {p1, v1, v2, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1500(Lcom/android/bluetooth/btservice/BondStateMachine;[BII)V

    .line 296
    goto/16 :goto_1

    .line 277
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 278
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 279
    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAddress()[B

    move-result-object v1

    invoke-static {v3, v1, v2, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1500(Lcom/android/bluetooth/btservice/BondStateMachine;[BII)V

    .line 280
    goto/16 :goto_1

    .line 235
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 236
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1100(Lcom/android/bluetooth/btservice/BondStateMachine;I)I

    move-result p1

    .line 238
    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    if-nez p1, :cond_4

    .line 240
    const/16 p1, 0x9

    .line 242
    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v3, v0, v1, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    .line 243
    const/16 p1, 0xb

    if-eq v1, p1, :cond_8

    .line 247
    if-ne v1, v2, :cond_5

    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    .line 248
    invoke-static {p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$600(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$600(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_5

    .line 249
    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    const-string v1, "not transitioning to stable state"

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$200(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V

    .line 250
    goto/16 :goto_1

    .line 253
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$600(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 254
    xor-int/2addr p1, v4

    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$600(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 259
    nop

    .line 260
    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1200(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    move p1, v5

    .line 262
    :cond_6
    if-ne v1, v2, :cond_7

    .line 263
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1300(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lcom/android/bluetooth/btservice/AdapterService;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)V

    .line 265
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1300(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lcom/android/bluetooth/btservice/AdapterService;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)V

    .line 267
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1300(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lcom/android/bluetooth/btservice/AdapterService;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)V

    .line 270
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v1, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1400(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    .line 314
    :cond_7
    move v5, p1

    goto :goto_1

    .line 272
    :cond_8
    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$600(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 273
    move v5, v4

    goto :goto_1

    .line 229
    :pswitch_3
    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {p1, v0, v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$500(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v5

    .line 230
    goto :goto_1

    .line 232
    :pswitch_4
    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1000(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    .line 233
    goto :goto_1

    .line 221
    :pswitch_5
    const/4 v1, 0x0

    .line 222
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 223
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "oobdata"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/OobData;

    .line 226
    :cond_9
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v0, p1, v1, v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$400(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;Z)Z

    move-result v5

    .line 227
    nop

    .line 314
    :cond_a
    :goto_1
    if-eqz v5, :cond_b

    .line 315
    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$600(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_b
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
