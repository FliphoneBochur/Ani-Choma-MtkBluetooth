.class Lcom/android/bluetooth/gatt/AppScanStats$LastScan;
.super Ljava/lang/Object;
.source "AppScanStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/AppScanStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LastScan"
.end annotation


# instance fields
.field public duration:J

.field public filterString:Ljava/lang/String;

.field public isBackgroundScan:Z

.field public isBatchScan:Z

.field public isCallbackScan:Z

.field public isFilterScan:Z

.field public isOpportunisticScan:Z

.field public isSuspended:Z

.field public isTimeout:Z

.field public results:I

.field public scanCallbackType:I

.field public scanMode:I

.field public scannerId:I

.field public suspendDuration:J

.field public suspendStartTime:J

.field final synthetic this$0:Lcom/android/bluetooth/gatt/AppScanStats;

.field public timestamp:J


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/AppScanStats;JZZIII)V
    .locals 2

    .line 83
    iput-object p1, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->this$0:Lcom/android/bluetooth/gatt/AppScanStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->duration:J

    .line 85
    iput-wide p2, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->timestamp:J

    .line 86
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isOpportunisticScan:Z

    .line 87
    iput-boolean p1, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isTimeout:Z

    .line 88
    iput-boolean p1, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isBackgroundScan:Z

    .line 89
    iput-boolean p4, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isFilterScan:Z

    .line 90
    iput-boolean p5, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isCallbackScan:Z

    .line 91
    iput-boolean p1, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isBatchScan:Z

    .line 92
    iput p7, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->scanMode:I

    .line 93
    iput p8, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->scanCallbackType:I

    .line 94
    iput p1, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->results:I

    .line 95
    iput p6, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->scannerId:I

    .line 96
    iput-wide v0, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->suspendDuration:J

    .line 97
    iput-wide v0, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->suspendStartTime:J

    .line 98
    iput-boolean p1, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isSuspended:Z

    .line 99
    const-string p1, ""

    iput-object p1, p0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->filterString:Ljava/lang/String;

    .line 100
    return-void
.end method
