.class Lcom/android/bluetooth/btservice/AdapterService$2;
.super Landroid/os/Handler;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/btservice/AdapterService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;Landroid/os/Looper;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 535
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() - Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->access$600(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    .line 537
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 539
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v0, "MESSAGE_CLEANUP_NATIVE_TIMEOUT"

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$600(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    .line 540
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/AdapterService;->onDestroy()V

    .line 543
    :goto_0
    return-void
.end method
