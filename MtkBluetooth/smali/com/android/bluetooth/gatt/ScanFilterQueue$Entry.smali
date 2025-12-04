.class Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
.super Ljava/lang/Object;
.source "ScanFilterQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ScanFilterQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field public addr_type:B

.field public address:Ljava/lang/String;

.field public company:I

.field public company_mask:I

.field public data:[B

.field public data_mask:[B

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/gatt/ScanFilterQueue;

.field public type:B

.field public uuid:Ljava/util/UUID;

.field public uuid_mask:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->this$0:Lcom/android/bluetooth/gatt/ScanFilterQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
