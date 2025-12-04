.class abstract Lcom/android/bluetooth/btservice/AdapterState$BaseAdapterState;
.super Lcom/android/bluetooth/statemachine/State;
.source "AdapterState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseAdapterState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterState;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState$BaseAdapterState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$1;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState$BaseAdapterState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 153
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState$BaseAdapterState;->getStateValue()I

    move-result v0

    .line 154
    const-string v1, "entered "

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/AdapterState$BaseAdapterState;->infoLog(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$BaseAdapterState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/AdapterState;->access$800(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$BaseAdapterState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v2}, Lcom/android/bluetooth/btservice/AdapterState;->access$700(Lcom/android/bluetooth/btservice/AdapterState;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/bluetooth/btservice/AdapterService;->updateAdapterState(II)V

    .line 156
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$BaseAdapterState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v1, v0}, Lcom/android/bluetooth/btservice/AdapterState;->access$702(Lcom/android/bluetooth/btservice/AdapterState;I)I

    .line 157
    return-void
.end method

.method errorLog(Ljava/lang/String;)V
    .locals 3

    .line 166
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterState;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState$BaseAdapterState;->getStateValue()I

    move-result v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method abstract getStateValue()I
.end method

.method infoLog(Ljava/lang/String;)V
    .locals 3

    .line 161
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterState;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState$BaseAdapterState;->getStateValue()I

    move-result v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method
