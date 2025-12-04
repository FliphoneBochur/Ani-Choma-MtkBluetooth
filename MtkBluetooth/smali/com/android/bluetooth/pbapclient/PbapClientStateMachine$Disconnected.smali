.class Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnected;
.super Lcom/android/bluetooth/statemachine/State;
.source "PbapClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Disconnected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$000(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$100(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$200(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 132
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {v0, v3}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$102(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;I)I

    .line 133
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->quit()V

    .line 134
    return-void
.end method
