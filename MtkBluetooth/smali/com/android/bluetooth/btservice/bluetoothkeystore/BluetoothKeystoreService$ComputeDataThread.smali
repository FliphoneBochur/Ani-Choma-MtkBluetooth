.class Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;
.super Ljava/lang/Thread;
.source "BluetoothKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComputeDataThread"
.end annotation


# instance fields
.field private mDoEncrypt:Z

.field private mSourceDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitQueueEmptyForStop:Z

.field final synthetic this$0:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;Z)V
    .locals 2

    .line 879
    iput-object p1, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->this$0:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComputeDataThread: create, doEncrypt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->access$000(Ljava/lang/String;)V

    .line 881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->mWaitQueueEmptyForStop:Z

    .line 882
    iput-boolean p2, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->mDoEncrypt:Z

    .line 884
    if-eqz p2, :cond_0

    .line 885
    invoke-static {p1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->access$100(Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->mSourceDataMap:Ljava/util/Map;

    .line 886
    invoke-static {p1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->access$200(Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->mTargetDataMap:Ljava/util/Map;

    .line 887
    invoke-static {p1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->access$300(Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->mSourceQueue:Ljava/util/concurrent/BlockingQueue;

    goto :goto_0

    .line 889
    :cond_0
    invoke-static {p1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->access$200(Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->mSourceDataMap:Ljava/util/Map;

    .line 890
    invoke-static {p1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->access$100(Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->mTargetDataMap:Ljava/util/Map;

    .line 891
    invoke-static {p1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->access$400(Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->mSourceQueue:Ljava/util/concurrent/BlockingQueue;

    .line 893
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComputeDataThread: run, doEncrypt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->mDoEncrypt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->access$000(Ljava/lang/String;)V

    .line 901
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->mSourceQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->mWaitQueueEmptyForStop:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 918
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComputeDataThread: Stop, doEncrypt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->mDoEncrypt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->access$000(Ljava/lang/String;)V

    .line 919
    return-void

    .line 903
    :cond_1
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->mSourceQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 904
    iget-object v1, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->mSourceDataMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 905
    iget-object v1, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->mSourceDataMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 906
    iget-object v2, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->this$0:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;

    iget-boolean v3, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->mDoEncrypt:Z

    invoke-static {v2, v1, v3}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->access$500(Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 907
    if-eqz v1, :cond_2

    .line 908
    iget-object v2, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->mTargetDataMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 910
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Computing of Data failed with prefixString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", doEncrypt: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->mDoEncrypt:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->access$600(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 914
    :catch_0
    move-exception v0

    .line 915
    const-string v0, "Interrupted while operating."

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->access$000(Ljava/lang/String;)V

    .line 916
    :cond_3
    :goto_2
    goto :goto_0
.end method

.method public setWaitQueueEmptyForStop()V
    .locals 1

    .line 922
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->mWaitQueueEmptyForStop:Z

    .line 923
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->this$0:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->access$300(Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->interrupt()V

    .line 926
    :cond_0
    return-void
.end method
