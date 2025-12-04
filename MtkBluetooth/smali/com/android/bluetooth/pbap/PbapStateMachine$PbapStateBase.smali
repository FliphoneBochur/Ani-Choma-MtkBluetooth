.class abstract Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;
.super Lcom/android/internal/util/State;
.source "PbapStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/PbapStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PbapStateBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/pbap/PbapStateMachine;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/pbap/PbapStateMachine;Lcom/android/bluetooth/pbap/PbapStateMachine$1;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;-><init>(Lcom/android/bluetooth/pbap/PbapStateMachine;)V

    return-void
.end method

.method private broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastConnectionState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->stateLogD(Ljava/lang/String;)V

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const-string p2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const-string p2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 157
    const/high16 p1, 0x1000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    iget-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object p1

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p3, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method private enforceValidConnectionStateTransition()V
    .locals 4

    .line 186
    nop

    .line 187
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$300(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$000(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v2, v1

    goto :goto_3

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$400(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;

    move-result-object v0

    if-ne p0, v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$000(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$500(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;

    move-result-object v3

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$000(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$300(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;

    move-result-object v3

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    move v2, v1

    goto :goto_3

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$500(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;

    move-result-object v0

    if-ne p0, v0, :cond_7

    .line 192
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$000(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$400(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;

    move-result-object v3

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$000(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$300(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;

    move-result-object v3

    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :cond_6
    :goto_2
    move v2, v1

    .line 194
    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    .line 199
    return-void

    .line 195
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state transition from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 196
    invoke-static {v2}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$000(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 197
    invoke-static {v2}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$200(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method broadcastStateTransitions()V
    .locals 3

    .line 166
    nop

    .line 167
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$000(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$000(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->getConnectionStateInt()I

    move-result v0

    goto :goto_0

    .line 167
    :cond_0
    const/4 v0, 0x0

    .line 170
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->getConnectionStateInt()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connection state changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$200(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$000(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->stateLogD(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$200(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->getConnectionStateInt()I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 175
    :cond_1
    return-void
.end method

.method public enter()V
    .locals 2

    .line 139
    instance-of v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$000(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mPrevState is null on entering initial state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->enforceValidConnectionStateTransition()V

    .line 143
    return-void
.end method

.method public exit()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0, p0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$002(Lcom/android/bluetooth/pbap/PbapStateMachine;Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;)Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;

    .line 148
    return-void
.end method

.method abstract getConnectionStateInt()I
.end method

.method stateLogD(Ljava/lang/String;)V
    .locals 3

    .line 202
    invoke-static {}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": currentDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$200(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->log(Ljava/lang/String;)V

    .line 205
    :cond_0
    return-void
.end method
