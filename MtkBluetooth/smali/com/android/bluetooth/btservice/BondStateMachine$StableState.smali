.class Lcom/android/bluetooth/btservice/BondStateMachine$StableState;
.super Lcom/android/bluetooth/statemachine/State;
.source "BondStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/BondStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StableState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/BondStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/BondStateMachine;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/BondStateMachine$1;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;-><init>(Lcom/android/bluetooth/btservice/BondStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    const-string v1, "StableState(): Entering Off State"

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$200(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$302(Lcom/android/bluetooth/btservice/BondStateMachine;Z)Z

    .line 147
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    .line 152
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 154
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eq v1, v3, :cond_5

    const/4 v5, 0x3

    if-eq v1, v5, :cond_4

    const/4 v5, 0x4

    const-string v6, "BluetoothBondStateMachine"

    if-eq v1, v5, :cond_0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unhandled state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return v4

    .line 168
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 170
    const/16 v1, 0xb

    if-ne p1, v1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$600(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$600(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v1, v0, p1, v4}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    .line 175
    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$700(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    goto :goto_0

    .line 176
    :cond_2
    if-ne p1, v3, :cond_3

    .line 178
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v1, v0, p1, v4}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 180
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In stable state, received invalid newState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    .line 181
    invoke-static {v1, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$800(Lcom/android/bluetooth/btservice/BondStateMachine;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    goto :goto_0

    .line 165
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {p1, v0, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$500(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 166
    goto :goto_0

    .line 185
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingBondedDevices:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 186
    iget-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v4}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 157
    :cond_6
    const/4 v1, 0x0

    .line 158
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 159
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "oobdata"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/OobData;

    .line 162
    :cond_7
    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v0, p1, v1, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$400(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;Z)Z

    .line 163
    nop

    .line 194
    :cond_8
    :goto_0
    return v2
.end method
