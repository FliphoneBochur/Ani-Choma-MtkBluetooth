.class Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
.super Ljava/lang/Object;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Msg"
.end annotation


# instance fields
.field public flagRead:I

.field public folderId:J

.field public id:J

.field public localInitiatedSend:Z

.field public oldFolderId:J

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field public threadId:I

.field public transparent:Z

.field public type:I


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V
    .locals 2

    .line 861
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    .line 855
    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->oldFolderId:J

    .line 856
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 857
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    .line 859
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    .line 862
    iput-wide p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    .line 863
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 864
    iput p5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    .line 865
    iput p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    .line 866
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JJI)V
    .locals 2

    .line 868
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    .line 855
    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->oldFolderId:J

    .line 856
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 857
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    .line 859
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    .line 869
    iput-wide p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    .line 870
    iput-wide p4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    .line 871
    iput p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    .line 872
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 888
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 889
    return v0

    .line 891
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 892
    return v1

    .line 894
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 895
    return v1

    .line 897
    :cond_2
    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 898
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    iget-wide v4, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    .line 899
    return v1

    .line 901
    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 881
    nop

    .line 882
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    .line 883
    return v1
.end method
