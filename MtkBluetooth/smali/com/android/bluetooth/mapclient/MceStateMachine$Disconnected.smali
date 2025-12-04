.class Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnected;
.super Lcom/android/bluetooth/statemachine/State;
.source "MceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapclient/MceStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Disconnected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/mapclient/MceStateMachine;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 373
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter Disconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MceSM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$100(Lcom/android/bluetooth/mapclient/MceStateMachine;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$200(Lcom/android/bluetooth/mapclient/MceStateMachine;II)V

    .line 377
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0, v2}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$102(Lcom/android/bluetooth/mapclient/MceStateMachine;I)I

    .line 378
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->quit()V

    .line 379
    return-void
.end method

.method public exit()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$102(Lcom/android/bluetooth/mapclient/MceStateMachine;I)I

    .line 384
    return-void
.end method
