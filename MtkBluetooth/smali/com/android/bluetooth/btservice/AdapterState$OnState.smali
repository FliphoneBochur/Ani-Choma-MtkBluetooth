.class Lcom/android/bluetooth/btservice/AdapterState$OnState;
.super Lcom/android/bluetooth/btservice/AdapterState$BaseAdapterState;
.source "AdapterState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterState;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;)V
    .locals 1

    .line 218
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/btservice/AdapterState$BaseAdapterState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$1;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState$OnState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;)V

    return-void
.end method


# virtual methods
.method getStateValue()I
    .locals 1

    .line 222
    const/16 v0, 0xc

    return v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2

    .line 227
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v1, p1}, Lcom/android/bluetooth/btservice/AdapterState;->access$1200(Lcom/android/bluetooth/btservice/AdapterState;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState$OnState;->infoLog(Ljava/lang/String;)V

    .line 234
    const/4 p1, 0x0

    return p1

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterState;->access$1500(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$TurningOffState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 230
    nop

    .line 236
    const/4 p1, 0x1

    return p1
.end method
