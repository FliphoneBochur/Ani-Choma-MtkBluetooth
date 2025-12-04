.class Lcom/android/bluetooth/btservice/AdapterState$TurningBleOffState;
.super Lcom/android/bluetooth/btservice/AdapterState$BaseAdapterState;
.source "AdapterState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TurningBleOffState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterState;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;)V
    .locals 1

    .line 360
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState$TurningBleOffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/btservice/AdapterState$BaseAdapterState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$1;)V
    .locals 0

    .line 360
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState$TurningBleOffState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 369
    invoke-super {p0}, Lcom/android/bluetooth/btservice/AdapterState$BaseAdapterState;->enter()V

    .line 370
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState$TurningBleOffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v1, 0xb

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    .line 371
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState$TurningBleOffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterState;->access$800(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->bringDownBle()V

    .line 372
    return-void
.end method

.method public exit()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState$TurningBleOffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->access$2100(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 377
    invoke-super {p0}, Lcom/android/bluetooth/btservice/AdapterState$BaseAdapterState;->exit()V

    .line 378
    return-void
.end method

.method getStateValue()I
    .locals 1

    .line 364
    const/16 v0, 0x10

    return v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2

    .line 382
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$TurningBleOffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v1, p1}, Lcom/android/bluetooth/btservice/AdapterState;->access$1200(Lcom/android/bluetooth/btservice/AdapterState;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState$TurningBleOffState;->infoLog(Ljava/lang/String;)V

    .line 394
    const/4 p1, 0x0

    return p1

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState$TurningBleOffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->access$1200(Lcom/android/bluetooth/btservice/AdapterState;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState$TurningBleOffState;->errorLog(Ljava/lang/String;)V

    .line 389
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState$TurningBleOffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterState;->access$2200(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 390
    goto :goto_0

    .line 384
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState$TurningBleOffState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterState;->access$2200(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 385
    nop

    .line 396
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
