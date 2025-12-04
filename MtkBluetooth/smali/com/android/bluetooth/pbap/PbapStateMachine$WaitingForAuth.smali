.class Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;
.super Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;
.source "PbapStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/PbapStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitingForAuth"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/PbapStateMachine;)V
    .locals 1

    .line 208
    iput-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;-><init>(Lcom/android/bluetooth/pbap/PbapStateMachine;Lcom/android/bluetooth/pbap/PbapStateMachine$1;)V

    return-void
.end method

.method private rejectConnection()V
    .locals 5

    .line 245
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    new-instance v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 246
    invoke-static {v2}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$800(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/bluetooth/pbap/PbapStateMachine;)V

    .line 245
    invoke-static {v0, v1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$902(Lcom/android/bluetooth/pbap/PbapStateMachine;Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;)Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    .line 247
    new-instance v0, Lcom/android/bluetooth/BluetoothObexTransport;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$1000(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 248
    new-instance v1, Lcom/android/bluetooth/ObexRejectServer;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 249
    invoke-static {v2}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$1000(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    const/16 v3, 0xd3

    invoke-direct {v1, v3, v2}, Lcom/android/bluetooth/ObexRejectServer;-><init>(ILandroid/bluetooth/BluetoothSocket;)V

    .line 251
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    new-instance v3, Ljavax/obex/ServerSession;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    invoke-static {v2, v3}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$1102(Lcom/android/bluetooth/pbap/PbapStateMachine;Ljavax/obex/ServerSession;)Ljavax/obex/ServerSession;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception starting OBEX reject server session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PbapStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .line 216
    invoke-super {p0}, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->enter()V

    .line 217
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;->broadcastStateTransitions()V

    .line 218
    return-void
.end method

.method getConnectionStateInt()I
    .locals 1

    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 222
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->checkOrGetPhonebookPermission(Lcom/android/bluetooth/pbap/PbapStateMachine;)V

    .line 225
    goto :goto_0

    .line 234
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$800(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-virtual {p1, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 236
    iget-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$800(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-virtual {p1, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 237
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 238
    iget-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$400(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 230
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;->rejectConnection()V

    .line 231
    iget-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$400(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 232
    goto :goto_0

    .line 227
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$500(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 228
    nop

    .line 241
    :goto_0
    return v0
.end method
