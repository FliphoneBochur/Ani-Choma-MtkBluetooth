.class Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnecting;
.super Lcom/android/bluetooth/statemachine/State;
.source "MceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapclient/MceStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Disconnecting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/mapclient/MceStateMachine;)V
    .locals 0

    .line 812
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 815
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter Disconnecting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MceSM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$100(Lcom/android/bluetooth/mapclient/MceStateMachine;)I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$200(Lcom/android/bluetooth/mapclient/MceStateMachine;II)V

    .line 820
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MasClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MasClient;

    move-result-object v0

    new-instance v1, Lcom/android/bluetooth/mapclient/RequestSetNotificationRegistration;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/bluetooth/mapclient/RequestSetNotificationRegistration;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/mapclient/MasClient;->makeRequest(Lcom/android/bluetooth/mapclient/Request;)Z

    .line 822
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MasClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/MasClient;->shutdown()V

    .line 823
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    const/4 v1, 0x4

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/mapclient/MceStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$600(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 828
    :goto_0
    return-void
.end method

.method public exit()V
    .locals 2

    .line 854
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$102(Lcom/android/bluetooth/mapclient/MceStateMachine;I)I

    .line 855
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$1500(Lcom/android/bluetooth/mapclient/MceStateMachine;I)V

    .line 856
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 832
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3ea

    if-eq v0, v2, :cond_0

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from state:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-virtual {p0}, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnecting;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 845
    const-string v0, "MceSM"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 p1, 0x0

    return p1

    .line 835
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$402(Lcom/android/bluetooth/mapclient/MceStateMachine;Lcom/android/bluetooth/mapclient/MasClient;)Lcom/android/bluetooth/mapclient/MasClient;

    .line 836
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$600(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 837
    goto :goto_0

    .line 841
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 842
    nop

    .line 849
    :goto_0
    return v1
.end method
