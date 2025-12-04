.class Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
.super Ljava/lang/Object;
.source "ScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatchScanParams"
.end annotation


# instance fields
.field public fullScanscannerId:I

.field public scanMode:I

.field final synthetic this$0:Lcom/android/bluetooth/gatt/ScanManager;

.field public truncatedScanscannerId:I


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ScanManager;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    .line 471
    iput p1, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanscannerId:I

    .line 472
    iput p1, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanscannerId:I

    .line 473
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 477
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 478
    return v0

    .line 480
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 483
    :cond_1
    check-cast p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    .line 484
    iget v2, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    iget v3, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanscannerId:I

    iget v3, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanscannerId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanscannerId:I

    iget p1, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanscannerId:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 481
    :cond_3
    :goto_1
    return v1
.end method
