.class Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;
.super Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;
.source "PbapStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/PbapStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Finished"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/PbapStateMachine;)V
    .locals 1

    .line 258
    iput-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;-><init>(Lcom/android/bluetooth/pbap/PbapStateMachine;Lcom/android/bluetooth/pbap/PbapStateMachine$1;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 266
    invoke-super {p0}, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->enter()V

    .line 268
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$1100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Ljavax/obex/ServerSession;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$1100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Ljavax/obex/ServerSession;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/obex/ServerSession;->close()V

    .line 270
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0, v1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$1102(Lcom/android/bluetooth/pbap/PbapStateMachine;Ljavax/obex/ServerSession;)Ljavax/obex/ServerSession;

    .line 275
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$1000(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 276
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0, v1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$1002(Lcom/android/bluetooth/pbap/PbapStateMachine;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Close Connection Socket error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PbapStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$800(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138e

    iget-object v2, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 283
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;->broadcastStateTransitions()V

    .line 284
    return-void
.end method

.method getConnectionStateInt()I
    .locals 1

    .line 261
    const/4 v0, 0x0

    return v0
.end method
